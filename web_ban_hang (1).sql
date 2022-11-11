-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2022 lúc 10:43 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_account`
--

CREATE TABLE `admin_account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `number_phone` varchar(11) NOT NULL,
  `level_admin` int(1) NOT NULL,
  `banned` int(1) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `cookie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin_account`
--

INSERT INTO `admin_account` (`id`, `user_name`, `pass_word`, `full_name`, `email`, `address`, `number_phone`, `level_admin`, `banned`, `create_date`, `cookie`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'ADMIN', 'phuoc@gmail.com', 'sơn hà', '08545151117', 1, 0, '2022-05-02 19:59:47', 'kZREik6o6VDr1sctBHbVZPWPR$imWvvcEg3eh3RcwhX$dicYVgfn9H1Ek5QvdnVRBgZyrRbmEs&nIOLqb8o$AeGnwtinKimM7NU2nD@xJ9&L@tJb597FnJvAVNZ9Gs%gRERLkUp6Ug#MB@egiplWJi;1;1'),
(2, 'admin1', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc0201@gmail.com', 'sơn hà', '08545151117', 1, 0, '2022-05-16 01:41:17', 'sAsKaDtqICzcSDxD%O^6UsR@%Rni^mEHzhppYK#ECO5NXwPvBa2ZedrdiwbZZgBVBX9AnDjBpAG^@gv$Uj4leaYMhL45ByJ^clNp6##lgS1frHm9KZsE&qsivRUWzgnDPCIyc#7JDvmbMZNH41R8Sf;2;1'),
(3, 'admin2', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', 'sơn hà', '2', 0, 0, '2022-05-17 11:09:26', 'DS%4RoPoeOvWU^XWEx^$byIpD7vzVfL8@hUONDMmfdc@5vW%@RPTb9yH6wjF9CRJCJC%LvvmuenJR7dX4wwV%eH4FzjYo3km$ENR%FEWu&S7$lf4HD^lmFSiseCG$bXMOneD8VAtDw#4f&vzeSRZVb;3;0'),
(4, 'admin3', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', 'sơn hà', '3', 0, 0, '2022-05-17 11:09:43', '0'),
(5, 'admin4', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', 'sơn hà', '3', 0, 0, '2022-05-17 11:09:52', '0'),
(6, 'admin5', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', 'sơn hà', '3', 0, 0, '2022-05-17 11:09:58', '1i97RYmmHd&qeR6FEmjnk3PA27ULxPFZvI5keJo$H2IH4qD^rGBg8w5OsMXcaBwSw%bFH$$XYSU@dUYf3jngBj3aWTBk#$RQZOPoIMCzqVor$Uhvh2QzHka7K4K9&ljul^5R5TM4jkWxkg7Uhu6DKafHzV9SA6^f&hhWD2sz%pAPD&hxcYXfKolQ2Mprs4NzJRpZ2w1h'),
(7, 'admin6', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', 'sơn hà', '3', 0, 0, '2022-05-17 11:10:06', '0'),
(8, 'admin7', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', '1', '1', 0, 0, '2022-05-17 11:10:38', '38AHbrMxU2%VHvXW%Le$oJPTzgOLQJDF%TFc&rvnMK$EZuCfT@quIKRqtVX4XzbBNMeo8Jt93ugg2YEGOWuDo6OKf^MFfwfPZ9wH55Tr^$@yTavu$ck34PUauy2^tYcvyZ3iS5OEvLfRE5mK$WM1e8;2;1'),
(9, 'admin8', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', '1', '1', 0, 0, '2022-05-17 11:10:42', '38AHbrMxU2%VHvXW%Le$oJPTzgOLQJDF%TFc&rvnMK$EZuCfT@quIKRqtVX4XzbBNMeo8Jt93ugg2YEGOWuDo6OKf^MFfwfPZ9wH55Tr^$@yTavu$ck34PUauy2^tYcvyZ3iS5OEvLfRE5mK$WM1e8;2;1'),
(10, 'admin9', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', '1', '1', 0, 0, '2022-05-17 11:10:45', '38AHbrMxU2%VHvXW%Le$oJPTzgOLQJDF%TFc&rvnMK$EZuCfT@quIKRqtVX4XzbBNMeo8Jt93ugg2YEGOWuDo6OKf^MFfwfPZ9wH55Tr^$@yTavu$ck34PUauy2^tYcvyZ3iS5OEvLfRE5mK$WM1e8;2;1'),
(11, 'admin10', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', '1', '1', 0, 0, '2022-05-17 11:10:48', '38AHbrMxU2%VHvXW%Le$oJPTzgOLQJDF%TFc&rvnMK$EZuCfT@quIKRqtVX4XzbBNMeo8Jt93ugg2YEGOWuDo6OKf^MFfwfPZ9wH55Tr^$@yTavu$ck34PUauy2^tYcvyZ3iS5OEvLfRE5mK$WM1e8;2;1'),
(12, 'admin11', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', '1', '1', 0, 0, '2022-05-17 11:10:53', '38AHbrMxU2%VHvXW%Le$oJPTzgOLQJDF%TFc&rvnMK$EZuCfT@quIKRqtVX4XzbBNMeo8Jt93ugg2YEGOWuDo6OKf^MFfwfPZ9wH55Tr^$@yTavu$ck34PUauy2^tYcvyZ3iS5OEvLfRE5mK$WM1e8;2;1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `create_at`, `update_at`, `status_delete`) VALUES
(147, 'Đàn Guitar', 'Dan-Guitar', 'Hiển Thị', '2022-10-21 13:20:29', '0000-00-00 00:00:00', 0),
(148, 'Đàn Piano', 'Dan-Piano', 'Hiển Thị', '2022-10-21 13:20:33', '0000-00-00 00:00:00', 0),
(149, 'Đàn Violin', 'Dan-Violin', 'Hiển Thị', '2022-10-21 13:20:40', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_product`
--

CREATE TABLE `comment_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name_user` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_mony` double DEFAULT NULL,
  `status_recieve` varchar(20) NOT NULL,
  `cancel_order` int(11) NOT NULL,
  `delete_order` int(11) NOT NULL,
  `id_personnel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img_product` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `descrip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `production_company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name_category` varchar(255) NOT NULL,
  `pay` int(11) NOT NULL,
  `sale_product` int(10) NOT NULL,
  `status_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `img_product`, `quantity`, `descrip`, `production_company`, `create_at`, `update_at`, `category_id`, `name_category`, `pay`, `sale_product`, `status_delete`) VALUES
(143, 'ĐÀN GUITAR ACOUSTIC ET-03SV', 18000000, 'ea33eeeaaa5a64043d4b-1-300x300.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:27:26', '0000-00-00 00:00:00', 147, 'Đàn Guitar', 0, 5, 0),
(144, 'ĐÀN GUITAR ACOUSTIC J-120', 15000000, 'z3359930878152_1570f0229a61621a744dd7287374b3b1-300x300.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:29:08', '0000-00-00 00:00:00', 147, 'Đàn Guitar', 0, 5, 0),
(145, 'ĐÀN GUITAR ACOUSTIC J-120', 15000000, 'z3272790566460_cbf140043949c6874fbd811b951fa1b0-300x300.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:29:28', '0000-00-00 00:00:00', 147, 'Đàn Guitar', 0, 5, 0),
(146, 'ĐÀN PIANO YAMAHA U2C', 50000000, 'dan-piano-yamaha-u3d.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:29:58', '0000-00-00 00:00:00', 148, 'Đàn Guitar', 0, 5, 0),
(147, 'ĐÀN PIANO YAMAHA U3D', 650000000, 'piano1.png', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:30:43', '0000-00-00 00:00:00', 148, 'Đàn Guitar', 0, 5, 0),
(148, 'ĐÀN PIANO PRO', 900000000, 'yamaha-u1d-400x400.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:31:11', '0000-00-00 00:00:00', 148, 'Đàn Guitar', 0, 5, 0),
(149, 'ĐÀN VIOLIN KAPOK', 200000000, 'Kapok-MV005-1-2-400x400.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:32:51', '0000-00-00 00:00:00', 149, 'Đàn Violin', 0, 5, 0),
(150, 'ĐÀN SUZUKI VIOLIN', 3500000000, 'adan-SUZUKI-VIOLIN-220FE4-44-400x400.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:33:57', '0000-00-00 00:00:00', 149, 'Đàn Violin', 0, 5, 0),
(151, 'ĐÀN Fiddlerman VIOLIN', 1500000000, 'Fiddlerman-Artist-Violin-1-2-outfit-with-case--bow-400x400.jpg', 10, 'Siêu đẹp', 'Công ty TNHH BDL', '2022-10-21 13:34:43', '0000-00-00 00:00:00', 149, 'Đàn Violin', 0, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name_slider` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `slider_img` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email_account` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address_user` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `active_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_account`
--

INSERT INTO `user_account` (`id`, `name`, `email_account`, `pass_word`, `phone_number`, `address_user`, `create_at`, `update_at`, `active_status`) VALUES
(28, 'Lê Hữu Phước', 'lephuoc1@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123', 'quảng ngãi', '2022-01-22 14:40:08', '0000-00-00 00:00:00', 'Hoạt Động'),
(29, 'Lê Hữu Phước', 'phuoc11@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123', '123', '2022-01-22 14:41:00', '0000-00-00 00:00:00', 'Hoạt Động'),
(30, 'Lê Hữu Phước', 'lephuoc2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123456', 'quảng ngãi', '2022-03-05 11:47:04', '0000-00-00 00:00:00', 'Hoạt Động'),
(31, 'Lê Hữu Phước', 'lehuuphuocit0201@gmail.comr', 'c4ca4238a0b923820dcc509a6f75849b', '0212121111', 'quảng nam', '2022-05-11 12:40:12', '0000-00-00 00:00:00', 'Hoạt Động'),
(32, 'Lê Hữu Phước', 'vienbangnghien@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '2022-05-11 12:41:09', '0000-00-00 00:00:00', 'Hoạt Động'),
(33, 'Lê Hữu Phước', 'test@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151117', 'quảng nam', '2022-05-15 16:11:08', '0000-00-00 00:00:00', 'Hoạt Động'),
(34, 'Lê Hữu Phước', 'lehuuphuocit0201@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '23', 'quảng nam', '2022-05-16 19:55:43', '0000-00-00 00:00:00', 'Hoạt Động'),
(35, 'phuoc', '5@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0', '0', '2022-05-16 21:09:38', '0000-00-00 00:00:00', 'Hoạt Động'),
(36, 'Lê Hữu Phước', '1@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '2022-05-17 10:57:59', '0000-00-00 00:00:00', 'Hoạt Động'),
(37, 'Lê Hữu Phước', '2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '2022-05-17 10:58:14', '0000-00-00 00:00:00', 'Hoạt Động'),
(38, 'Lê Hữu Phước', '3@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '2022-05-17 10:58:29', '0000-00-00 00:00:00', 'Hoạt Động'),
(39, 'Lê Hữu Phước', 'phuocit@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151117', 'quảng ngãi', '2022-05-21 09:34:58', '0000-00-00 00:00:00', 'Hoạt Động'),
(40, 'Thủy Tiên', 'thuytien@gmail.com', '202cb962ac59075b964b07152d234b70', '0845151117', 'quảng nam', '2022-05-21 09:39:58', '0000-00-00 00:00:00', 'Block'),
(41, 'Lê Hữu Phước', 'lehuuphuocit02012@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '2022-05-26 21:33:49', '0000-00-00 00:00:00', 'Hoạt Động'),
(42, 'Thủy Tiên', 'tien@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151117', 'quảng ngãi', '2022-06-21 00:47:08', '0000-00-00 00:00:00', 'Block'),
(43, 'PhuocIT', 'uyenuyen@gmail.com', '202cb962ac59075b964b07152d234b70', '0845151117', 'quang ngai', '2022-11-09 20:53:01', '0000-00-00 00:00:00', 'true'),
(44, 'Lan Uyen', 'lanuyen@gmail.com', '202cb962ac59075b964b07152d234b70', '0845151117', 'quang ngai', '2022-11-09 21:27:40', '0000-00-00 00:00:00', 'true'),
(45, 'Lan Uyen', 'lanuyen123@gmail.com', '202cb962ac59075b964b07152d234b70', '0845151117', 'quang ngai', '2022-11-10 18:18:52', '0000-00-00 00:00:00', 'true'),
(46, 'Lan Uyen', 'khanhnhi@gmail.com', '202cb962ac59075b964b07152d234b70', '0845151117', 'quang ngai', '2022-11-10 18:27:09', '0000-00-00 00:00:00', 'true');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personnel` (`id_personnel`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  ADD CONSTRAINT `comment_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_product_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_account` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`id_personnel`) REFERENCES `admin_account` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
