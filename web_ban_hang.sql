-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 29, 2022 lúc 01:59 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

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
(2, 'admin1', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc0201@gmail.com', 'sơn hà', '08545151117', 1, 0, '2022-05-16 01:41:17', '8sl2q$j2wJvsZOK3GzfSus6eFc$^js4MvOq62RBLEVmRgh4qbm25&94f$ezl1cXwvmCfA$gPqRa4aypenrbDWbboSR3J4WM9dpt9tcYMC&RAt%ynXabWw6I1fBvNpP#R3%XDiKk3YrTL&fdb7aeMQUBLE^Oswl6sDo57J5qUzR3y%gAPMgccTHIBPiS2UHjLZOeP9Wr%'),
(3, 'admin2', 'c4ca4238a0b923820dcc509a6f75849b', 'Lê Hữu Phước', 'phuoc@gmail.com', 'sơn hà', '2', 0, 0, '2022-05-17 11:09:26', '0'),
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
(140, 'Laptop', 'Laptop', 'Hiển Thị', '2022-06-20 22:36:13', '0000-00-00 00:00:00', 0),
(141, 'Tai nghe', 'Tai-nghe', 'Hiển Thị', '2022-06-20 22:36:23', '0000-00-00 00:00:00', 0),
(142, 'Bàn phím', 'Ban-phim', 'Hiển Thị', '2022-06-20 22:36:32', '0000-00-00 00:00:00', 0),
(143, 'Điện thoại', 'Dien-thoai', 'Hiển Thị', '2022-06-20 22:36:56', '0000-00-00 00:00:00', 0),
(144, 'Màn hình máy tính', 'Man-hinh-may-tinh', 'Hiển Thị', '2022-06-20 22:37:03', '0000-00-00 00:00:00', 0),
(145, 'Tivi', 'Tivi', 'Hiển Thị', '2022-06-20 22:37:55', '0000-00-00 00:00:00', 1),
(146, 'Loa', 'Loa', 'Hiển Thị', '2022-06-20 22:38:18', '0000-00-00 00:00:00', 0);

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
  `name_product` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `name_product`, `product_id`, `quantity`, `unit_price`) VALUES
(125, 'Dell Inspiron 3511', 120, 1, 11590000),
(125, 'Asus Vivobook X413JA', 121, 1, 11305000),
(126, 'Dell Inspiron 7559', 123, 2, 19620000);

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

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `user_id`, `create_at`, `name`, `address`, `phone_number`, `status`, `total_mony`, `status_recieve`, `cancel_order`, `delete_order`, `id_personnel`) VALUES
(125, 34, '2022-06-21 00:41:50', 'Lê Hữu Phước', 'quảng nam', '23', 'Chờ Xử Lý', 22930000, 'false', 0, 0, NULL),
(126, 42, '2022-06-21 00:47:44', 'Thủy Tiên', 'quảng ngãi', '0845151117', 'Đã Nhận Hàng', 19655000, 'true', 0, 0, 1),
(127, 28, '2022-06-22 15:46:00', 'okokokok', 'okokkoko', '0845151117', '0', 100000, '0', 0, 0, 1);

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
(120, 'Dell Inspiron 3511', 12200000, 'Dell-Inspiron-3511.png', 99, 'i3-1115G4 RAM 4GB SSD 128GB FullHD', 'Shopper', '2022-06-20 22:43:15', '0000-00-00 00:00:00', 140, 'Laptop', 1, 5, 0),
(121, 'Asus Vivobook X413JA', 11900000, 'Asus-Vivobook-X413JA.png', 99, 'i3-1005G1 RAM 4GB SSD 128GB FullHD', 'Shopper', '2022-06-20 22:46:23', '0000-00-00 00:00:00', 140, 'Laptop', 1, 5, 0),
(122, 'Dell Vostro 3510', 13900000, 'dell-vostro-3510.png', 50, 'i5-1035G1 RAM 8GB SSD 256GB FullHD', 'Shopper', '2022-06-20 22:48:42', '0000-00-00 00:00:00', 140, 'Laptop', 0, 10, 0),
(123, 'Dell Inspiron 7559', 10900000, 'Dell-7559.png', 48, 'i5-1035G1 RAM 8GB SSD 256GB FullHD', 'Shopper', '2022-06-20 22:51:06', '0000-00-00 00:00:00', 140, 'Laptop', 2, 10, 0),
(124, 'HP-820-G2', 10100000, 'HP-820-G2.png', 50, 'i7-5600U RAM 4GB SSD 128GB', 'Shopper', '2022-06-20 22:54:09', '0000-00-00 00:00:00', 140, 'Laptop', 0, 10, 0),
(125, 'HP Probook ', 5000000, 'HP-640G1.png', 50, 'i5-6300U RAM 4GB SSD 120GB', 'Shopper', '2022-06-20 22:59:04', '0000-00-00 00:00:00', 140, 'Laptop', 0, 15, 0),
(126, 'Bàn phím E-DRA EK503', 250000, 'ban-phim-EK503.png', 10, '', 'Shopper', '2022-06-20 23:46:04', '0000-00-00 00:00:00', 142, 'Bàn phím', 0, 10, 0),
(127, 'Bàn phím DAREU LK145', 300000, 'DAREU-LK145-Gaming.png', 20, 'Bàn phím DAREU LK145 Gaming (led 7 màu)', 'Shopper', '2022-06-20 23:48:41', '0000-00-00 00:00:00', 142, 'Bàn phím', 0, 10, 0),
(128, 'Bàn phím EK501 E-DRA', 180000, 'ek501-1.png', 10, '', 'Shopper', '2022-06-20 23:51:14', '0000-00-00 00:00:00', 142, 'Bàn phím', 0, 10, 0),
(129, 'Tai nghe mèo CAT CXT-B39', 180000, 'tai-nghe-meo-Cat-CXT-B39.png', 100, 'Tai nghe mèo CAT CXT-B39', 'Shopper', '2022-06-20 23:57:02', '0000-00-00 00:00:00', 141, 'Tai nghe', 0, 5, 0),
(130, 'Tai nghe E-Dra EH412 Pink', 155000, 'tai-nghe-EH412-Pink.png', 50, 'Tai nghe E-Dra EH412 Pink', 'Shopper', '2022-06-20 23:58:44', '0000-00-00 00:00:00', 141, 'Tai nghe', 0, 10, 0),
(131, 'Tai nghe SONY Bass Extra NV002', 150000, 'Tai-nghe-Sony-Bass-Extra-NV002-1.png', 100, 'Tai nghe SONY Bass Extra NV002', 'Shopper', '2022-06-21 00:00:03', '0000-00-00 00:00:00', 141, 'Tai nghe', 0, 10, 0),
(132, 'iPhone 13 (New)', 20000000, 'iphone-13-green.png', 20, 'iPhone 13 gây ấn tượng mạnh với bộ 5 màu sắc Đen, Trắng, Xanh, Đỏ và iPhone 13 Hồng đáng yêu. iPhone 13 vẫn được duy trì một thiết kế hao hao anh em 2020, máy vẫn có phiên bản khung viền thép, mặt lưng kính cường lực bóng bẩy và bền bỉ.', 'Shopper', '2022-06-21 00:08:28', '0000-00-00 00:00:00', 143, 'Điện thoại', 0, 2, 0),
(133, 'iPhone 11 (Like New) ', 11000000, 'iphone-11-yellow.jpg', 10, 'Đúng như những đồn đoán, bộ 3 siêu phẩm iPhone 11, iPhone 11 Pro, iPhone 11 Pro Max đã được Apple giới thiệu vào tháng 9/2019. Trong đó iPhone 11 đạt tiêu chuẩn số đông với mức giá vô cùng “dễ chịu” với những nâng cấp tối ưu và mạnh mẽ. iPhone 11 64GB là ', 'Shopper', '2022-06-21 00:12:00', '0000-00-00 00:00:00', 143, 'Điện thoại', 0, 10, 0),
(134, 'iPhone 12', 15000000, 'ip12.png', 10, 'iPhone 12 64GB là sản phẩm cân bằng đủ mọi yếu tố mà người dùng cần trên một mẫu iPhone cao cấp trong năm 2020. Bao gồm hiệu năng khủng – không hề kém cạnh các phiên bản “Pro”, màn hình được nâng cấp lên chuẩn OLED Super Retina siêu nét và thiết kế hoàn t', 'Shopper', '2022-06-21 00:14:03', '0000-00-00 00:00:00', 143, 'Điện thoại', 0, 10, 0),
(135, 'LCD LG UltraGear 32GN500-B', 6200000, 'lcd_lg_ultragear_32gn500_b_31_5_inch.png', 20, 'Màn hình LG luôn mang đến cho người dùng những sản phẩm chất lượng, độ bền cao cùng với giá cả hợp lí, đảm bảo tính ổn định, tiện lợi mà nó mang lại. Màn Hình Máy Tính Gaming LG UltraGear 32GN500-B 31.5 inch FHD (1920 X 1080) 165Hz 1ms với thiết kế độc đá', 'Shopper', '2022-06-21 00:16:20', '0000-00-00 00:00:00', 144, 'Màn hình máy tính', 0, 5, 0),
(136, 'LCD LG UltraGear 27GP850-B', 5000000, 'mhmt-1.png', 20, 'Màn hình LG luôn mang đến cho người dùng những sản phẩm chất lượng, độ bền cao cùng với giá cả hợp lí, đảm bảo tính ổn định, tiện lợi mà nó mang lại. Màn Hình Máy Tính Gaming LG UltraGear 27GP850 27 inch với thiết kế độc đáo cũng như chất lượng hình ảnh t', 'Shopper', '2022-06-21 00:18:23', '0000-00-00 00:00:00', 144, 'Màn hình máy tính', 0, 5, 0),
(137, 'LCD Samsung LS27R350FHEXXV', 4500000, 'mhmt-2.png', 15, 'LCD Samsung LS27R350FHEXXV', 'Shopper', '2022-06-21 00:20:00', '0000-00-00 00:00:00', 144, 'Màn hình máy tính', 0, 10, 0),
(138, 'Loa vi tính mini Soundmax A130', 150000, 'loa-1.jpg', 20, 'Review loa vi tính mini Soundmax A130 cho âm bass mạnh, thỏa sức tận hưởng những bản nhạc dance, pop...\r\nSở hữu dải tần đa dạng, cho chất lượng âm thanh sống động', 'Shopper', '2022-06-21 00:22:32', '0000-00-00 00:00:00', 146, 'Loa', 0, 10, 0),
(139, 'Loa vi tính SoundMax A-827', 750000, 'loa-2.jpg', 50, 'SoundMax A-827 sở hữu màu đen cá tính, kích thước gọn gàng dễ dàng bố trí trên bàn làm việc hay bố trí trên tủ TV hoặc trên quầy pha chế ở các quán cà phê nhỏ mà không chiếm nhiều diện tích. ', 'Shopper', '2022-06-21 00:25:11', '0000-00-00 00:00:00', 146, 'Loa', 0, 15, 0),
(140, 'Loa SoundMax A140 2.0', 155000, 'loa-3.jpg', 50, 'SoundMax A140 là dòng loa hệ thống 2.0, trang bị cổng kết nối có dây chuẩn 3.5mm cho phép người dùng có thể thưởng thức âm nhạc, xem phim từ nhiều nguồn thiết bị khác nhau như PC, điện thoại, máy tính bảng, laptop,...', 'Shopper', '2022-06-21 00:27:35', '0000-00-00 00:00:00', 146, 'Loa', 0, 2, 0);

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
(42, 'Thủy Tiên', 'tien@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0845151117', 'quảng ngãi', '2022-06-21 00:47:08', '0000-00-00 00:00:00', 'Block');

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
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`id_personnel`) REFERENCES `admin_account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
