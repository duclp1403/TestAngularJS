-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2018 lúc 08:16 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dichvugiadinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenmon`
--

CREATE TABLE `chuyenmon` (
  `_maCM` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_maTho` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_maKieu` int(20) NOT NULL,
  `_tenCM` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `_maDV` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_tenDV` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_moTa` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_maLoai` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong`
--

CREATE TABLE `hopdong` (
  `_maHD` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_maKH` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_maCM` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_ketQua` tinyint(1) NOT NULL,
  `_tienSC` double NOT NULL,
  `_danhGia` int(11) NOT NULL,
  `_comment` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_ngayHD` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `_username` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_password` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_tenKH` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_type` int(11) NOT NULL,
  `_tinhTrang` int(11) NOT NULL,
  `_ngayDK` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kieusuachua`
--

CREATE TABLE `kieusuachua` (
  `_maKieu` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_cachSC` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_giaThamKhao` double NOT NULL,
  `_maDV` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidichvu`
--

CREATE TABLE `loaidichvu` (
  `_maLoai` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_tenLoai` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tho`
--

CREATE TABLE `tho` (
  `_username` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_password` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_tenTho` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_diaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `_soDT` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `type` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `_ngayDK` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyenmon`
--
ALTER TABLE `chuyenmon`
  ADD PRIMARY KEY (`_maCM`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`_maDV`);

--
-- Chỉ mục cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`_maHD`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`_username`);

--
-- Chỉ mục cho bảng `kieusuachua`
--
ALTER TABLE `kieusuachua`
  ADD PRIMARY KEY (`_maKieu`);

--
-- Chỉ mục cho bảng `loaidichvu`
--
ALTER TABLE `loaidichvu`
  ADD PRIMARY KEY (`_maLoai`);

--
-- Chỉ mục cho bảng `tho`
--
ALTER TABLE `tho`
  ADD PRIMARY KEY (`_username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
