-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 28, 2022 lúc 10:36 PM
-- Phiên bản máy phục vụ: 10.3.36-MariaDB-cll-lve
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phugacod_quanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) UNSIGNED NOT NULL,
  `MaDH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaKH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` double NOT NULL,
  `GhiChu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1,
  `PhuongThuc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `MaDH`, `MaKH`, `TongTien`, `GhiChu`, `TrangThai`, `PhuongThuc`) VALUES
(29, 'HD87820', 'nguyentrongphu143@gmail.com', 3590000, '', 1, 'Chuyển Khoản'),
(30, 'HD91785', 'nguyentrongphu143@gmail.com', 3590000, '', 1, 'Chuyển Khoản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id` int(11) UNSIGNED NOT NULL,
  `MaHD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SL` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`id`, `MaHD`, `MaSP`, `SL`) VALUES
(34, 'HD87820', 'SP14308', 10),
(35, 'HD91785', 'SP14308', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) UNSIGNED NOT NULL,
  `MaDanhMuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenDanhMuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `MaDanhMuc`, `TenDanhMuc`, `MoTa`) VALUES
(13, 'DM9226', 'Áo Polo', 'Dành cho nam, nữ từ 18t'),
(14, 'DM5576', 'Áo Thun', 'Trẻ em dưới 5t'),
(15, 'DM4665', 'Áo Khoác', 'Áo giữ nhiệt mùa đông'),
(16, 'DM2157', 'Áo Jacket', 'Áo thời trang tuổi đôi mươi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NamSinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CMND_CCCD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `QuocGia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TinhThanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `QuanHuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongXa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `NamSinh`, `CMND_CCCD`, `GioiTinh`, `QuocGia`, `TinhThanh`, `QuanHuyen`, `PhuongXa`, `DiaChi`, `SDT`, `Email`, `Hinh`) VALUES
('KH2235', 'Vũ Thành Trường Tuyên', '2001', '272754434', 'Nam', 'Việt Nam', 'Hồ Chí Minh', 'Gò Vấp', 'Phường 5', '0908379355', '0908379355', 'vuthanhtuyen@gmail.com', '1666844259_user.jpg'),
('KH9892', 'Phú nguyễn', '', '', '', '', '', '', '', '', '', 'nguyentrongphu143@gmail.com', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(10) UNSIGNED NOT NULL,
  `partnerCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orderId` int(20) NOT NULL,
  `amount` double NOT NULL,
  `trans_Id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`id`, `partnerCode`, `orderId`, `amount`, `trans_Id`) VALUES
(3, 'MOMOBKUN20180529', 0, 3590000, 2147483647),
(4, 'MOMOBKUN20180529', 0, 3590000, 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvientuvan`
--

CREATE TABLE `nhanvientuvan` (
  `MaNV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TaiKhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(10) NOT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhanvientuvan`
--

INSERT INTO `nhanvientuvan` (`MaNV`, `TaiKhoan`, `HoTen`, `SDT`, `DiaChi`, `Hinh`) VALUES
('NV741931', 'dangduykhang@gmail.com', 'Đặng Duy Khang', 123456789, 'Đại Học Công Nghiêp HCM', '1666608535_download.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvienvandon`
--

CREATE TABLE `nhanvienvandon` (
  `MaNV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(10) NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvienvandon`
--

INSERT INTO `nhanvienvandon` (`MaNV`, `TaiKhoan`, `HoTen`, `SDT`, `DiaChi`, `Hinh`) VALUES
('NV194949', 'vuvanpho@gmail.com', 'Vũ Văn Phố', 908379355, '156/9 Trần Bá Giao Gò Vấp', '1666607846_download.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(10) NOT NULL,
  `TenQuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`) VALUES
(1, 'Quản Trị Hệ Thống'),
(2, 'Nhân Viên Vận Đơn'),
(3, 'Nhân Viên Tư Vấn'),
(4, 'Người Dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) UNSIGNED NOT NULL,
  `MaSanPham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenSanPham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `GiaKM` double NOT NULL,
  `MaDanhMuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `MaSanPham`, `TenSanPham`, `Gia`, `GiaKM`, `MaDanhMuc`, `MoTa`, `Hinh`) VALUES
(10, 'SP45712', 'Áo Polo Sadboi ', 599000, 599000, 'DM5576', 'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et e', 'product-1.jpg'),
(14, 'SP30568', 'Áo Polo Sadboy Cực', 463000, 299000, 'DM9226', 'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et e', 'product-1.jpg'),
(15, 'SP14308', 'Áo Khoác Mùa Đông', 400000, 359000, 'DM4665', 'Sản phẩm đẹp trai mặc', 'product-8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) UNSIGNED NOT NULL,
  `TaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PhanQuyen` int(1) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `TrangThai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Lock` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `TaiKhoan`, `MatKhau`, `PhanQuyen`, `unique_id`, `TrangThai`, `Lock`) VALUES
(1, 'QUANTRI', '202cb962ac59075b964b07152d234b70', 1, 0, 'Offline', 1),
(105, 'vuvanpho@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, 905952750, 'Offline', 1),
(107, 'dangduykhang@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 3, 986319119, 'Offline', 1),
(108, 'vuthanhtuyen@gmail.com', '202cb962ac59075b964b07152d234b70', 4, 1082574540, 'Offline', 1),
(112, 'nguyentrongphu143@gmail.com', '803e182e17706a3795ee1e55e04e89e0', 4, 208809092, 'Online', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `id` int(10) NOT NULL,
  `TenTrangThai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthaidonhang`
--

INSERT INTO `trangthaidonhang` (`id`, `TenTrangThai`) VALUES
(1, 'Chuẩn Bị Hàng'),
(2, 'Giao Hàng'),
(3, 'Đã Thanh Toán'),
(4, 'Đã Hủy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvientuvan`
--
ALTER TABLE `nhanvientuvan`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `nhanvienvandon`
--
ALTER TABLE `nhanvienvandon`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaSanPham_2` (`MaSanPham`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TaiKhoan` (`TaiKhoan`);

--
-- Chỉ mục cho bảng `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
