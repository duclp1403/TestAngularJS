USE [master]
GO
/****** Object:  Database [dichvugiadinh]    Script Date: 11/8/2018 1:59:36 PM ******/
CREATE DATABASE [dichvugiadinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dichvugiadinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\dichvugiadinh.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dichvugiadinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\dichvugiadinh_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dichvugiadinh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dichvugiadinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dichvugiadinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dichvugiadinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dichvugiadinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dichvugiadinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dichvugiadinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [dichvugiadinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dichvugiadinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dichvugiadinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dichvugiadinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dichvugiadinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dichvugiadinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dichvugiadinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dichvugiadinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dichvugiadinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dichvugiadinh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dichvugiadinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dichvugiadinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dichvugiadinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dichvugiadinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dichvugiadinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dichvugiadinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dichvugiadinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dichvugiadinh] SET RECOVERY FULL 
GO
ALTER DATABASE [dichvugiadinh] SET  MULTI_USER 
GO
ALTER DATABASE [dichvugiadinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dichvugiadinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dichvugiadinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dichvugiadinh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dichvugiadinh] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dichvugiadinh', N'ON'
GO
USE [dichvugiadinh]
GO
/****** Object:  Table [dbo].[chuyenmon]    Script Date: 11/8/2018 1:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chuyenmon](
	[_maCM] [varchar](20) NOT NULL,
	[_maTho] [varchar](20) NULL,
	[_maKieu] [varchar](20) NOT NULL,
	[_tenCM] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[_maCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dichvu]    Script Date: 11/8/2018 1:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dichvu](
	[_maDV] [varchar](20) NOT NULL,
	[_tenDV] [nvarchar](150) NOT NULL,
	[_moTa] [nvarchar](150) NOT NULL,
	[_maLoai] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_maDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hopdong]    Script Date: 11/8/2018 1:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hopdong](
	[_maHD] [varchar](20) NOT NULL,
	[_maKH] [varchar](11) NOT NULL,
	[_maCM] [varchar](20) NOT NULL,
	[_ketQua] [int] NULL,
	[_tienSC] [int] NULL,
	[_danhGia] [int] NOT NULL,
	[_comment] [nvarchar](150) NOT NULL,
	[_matho] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[_maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 11/8/2018 1:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khachhang](
	[_username] [varchar](11) NOT NULL,
	[_passWord] [varchar](100) NOT NULL,
	[_tenKH] [nvarchar](150) NOT NULL,
	[type] [int] NOT NULL,
	[tinhtrang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kieusuachua]    Script Date: 11/8/2018 1:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kieusuachua](
	[_maKieu] [varchar](20) NOT NULL,
	[_cachSC] [nvarchar](150) NOT NULL,
	[_giaThamKhao] [int] NOT NULL,
	[_maDV] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_maKieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaidichvu]    Script Date: 11/8/2018 1:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loaidichvu](
	[_maLoai] [varchar](20) NOT NULL,
	[_tenLoai] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tho]    Script Date: 11/8/2018 1:59:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tho](
	[_username] [varchar](20) NOT NULL,
	[_passWord] [varchar](100) NOT NULL,
	[_tenTho] [nvarchar](150) NOT NULL,
	[_diaChi] [nvarchar](150) NOT NULL,
	[_soDT] [varchar](11) NOT NULL,
	[type] [int] NOT NULL,
	[tinhtrang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm01', N'abc', N'ksc01', N'Thay')
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm02', N'dg', N'ksc02', N'Sửa')
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm03', N'x', N'ksc03', N'Đổi')
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm04', N'y', N'ksc04', N'Cắm vào')
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm05', N'z', N'ksc05', N'Thay')
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm06', N'abc', N'ksc06', N'Tháo')
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm07', N'dg', N'ksc07', N'Đập')
INSERT [dbo].[chuyenmon] ([_maCM], [_maTho], [_maKieu], [_tenCM]) VALUES (N'cm08', N'y', N'ksc01', N'Thay')
INSERT [dbo].[dichvu] ([_maDV], [_tenDV], [_moTa], [_maLoai]) VALUES (N'dv01', N'Sửa ống nước', N'Sửa ống nước tốc độ cao', N'l01')
INSERT [dbo].[dichvu] ([_maDV], [_tenDV], [_moTa], [_maLoai]) VALUES (N'dv02', N'Cắm dây điện', N'Cắm dây điện vào ổ rồi thu tiền', N'l01')
INSERT [dbo].[dichvu] ([_maDV], [_tenDV], [_moTa], [_maLoai]) VALUES (N'dv03', N'Sửa máy giặc', N'Đụng gì thay đó', N'l02')
INSERT [dbo].[dichvu] ([_maDV], [_tenDV], [_moTa], [_maLoai]) VALUES (N'dv04', N'Sửa quạt', N'Làm cho quạt chạy là lụm tiền', N'l03')
INSERT [dbo].[dichvu] ([_maDV], [_tenDV], [_moTa], [_maLoai]) VALUES (N'dv05', N'Sửa tất cả về nhà ở', N'Hư chỗ nào sửa chỗ đó. Hư nhiều quá thì đốt nhà luôn', N'l04')
INSERT [dbo].[hopdong] ([_maHD], [_maKH], [_maCM], [_ketQua], [_tienSC], [_danhGia], [_comment], [_matho]) VALUES (N'hd01', N'a', N'cm01', 1, 500, 3, N'sdhfgsdjfgdsjhfgsd', N'abc')
INSERT [dbo].[hopdong] ([_maHD], [_maKH], [_maCM], [_ketQua], [_tienSC], [_danhGia], [_comment], [_matho]) VALUES (N'hd02', N'b', N'cm02', 2, 1000, 5, N'dgdfgfdgfdgfdg', N'x')
INSERT [dbo].[hopdong] ([_maHD], [_maKH], [_maCM], [_ketQua], [_tienSC], [_danhGia], [_comment], [_matho]) VALUES (N'hd03', N'c', N'cm03', 0, 0, 0, N'sdfsdfsdf', N'y')
INSERT [dbo].[hopdong] ([_maHD], [_maKH], [_maCM], [_ketQua], [_tienSC], [_danhGia], [_comment], [_matho]) VALUES (N'hd04', N'd', N'cm04', 1, 23123, 5, N'đfgdfgdfgdf', N'z')
INSERT [dbo].[hopdong] ([_maHD], [_maKH], [_maCM], [_ketQua], [_tienSC], [_danhGia], [_comment], [_matho]) VALUES (N'hd05', N'e', N'cm05', 1, 23123, 4, N'fhgdjkhdfkj', N'dg')
INSERT [dbo].[hopdong] ([_maHD], [_maKH], [_maCM], [_ketQua], [_tienSC], [_danhGia], [_comment], [_matho]) VALUES (N'hd06', N'e', N'cm06', 1, 56456, 2, N'dfsdfsdfsdf', N'abc')
INSERT [dbo].[hopdong] ([_maHD], [_maKH], [_maCM], [_ketQua], [_tienSC], [_danhGia], [_comment], [_matho]) VALUES (N'hd07', N'a', N'cm01', 1, 234654, 5, N'dsfsdfsdf', N'abc')
INSERT [dbo].[khachhang] ([_username], [_passWord], [_tenKH], [type], [tinhtrang]) VALUES (N'a', N'1', N'2', 1, 1)
INSERT [dbo].[khachhang] ([_username], [_passWord], [_tenKH], [type], [tinhtrang]) VALUES (N'b', N'2', N'3', 1, 1)
INSERT [dbo].[khachhang] ([_username], [_passWord], [_tenKH], [type], [tinhtrang]) VALUES (N'c', N'3', N'4', 1, 1)
INSERT [dbo].[khachhang] ([_username], [_passWord], [_tenKH], [type], [tinhtrang]) VALUES (N'd', N'4', N'5', 1, 1)
INSERT [dbo].[khachhang] ([_username], [_passWord], [_tenKH], [type], [tinhtrang]) VALUES (N'e', N'5', N'6', 1, 1)
INSERT [dbo].[kieusuachua] ([_maKieu], [_cachSC], [_giaThamKhao], [_maDV]) VALUES (N'ksc01', N'Thay', 200, N'dv01')
INSERT [dbo].[kieusuachua] ([_maKieu], [_cachSC], [_giaThamKhao], [_maDV]) VALUES (N'ksc02', N'Sửa', 1000, N'dv01')
INSERT [dbo].[kieusuachua] ([_maKieu], [_cachSC], [_giaThamKhao], [_maDV]) VALUES (N'ksc03', N'Đổi', 500, N'dv01')
INSERT [dbo].[kieusuachua] ([_maKieu], [_cachSC], [_giaThamKhao], [_maDV]) VALUES (N'ksc04', N'Cắm vào', 100, N'dv02')
INSERT [dbo].[kieusuachua] ([_maKieu], [_cachSC], [_giaThamKhao], [_maDV]) VALUES (N'ksc05', N'Thay', 1000, N'dv03')
INSERT [dbo].[kieusuachua] ([_maKieu], [_cachSC], [_giaThamKhao], [_maDV]) VALUES (N'ksc06', N'Tháo', 90, N'dv04')
INSERT [dbo].[kieusuachua] ([_maKieu], [_cachSC], [_giaThamKhao], [_maDV]) VALUES (N'ksc07', N'Đập', 500, N'dv05')
INSERT [dbo].[loaidichvu] ([_maLoai], [_tenLoai]) VALUES (N'l01', N'Ði?n nu?c')
INSERT [dbo].[loaidichvu] ([_maLoai], [_tenLoai]) VALUES (N'l02', N'Máy gi?c')
INSERT [dbo].[loaidichvu] ([_maLoai], [_tenLoai]) VALUES (N'l03', N'Qu?t')
INSERT [dbo].[loaidichvu] ([_maLoai], [_tenLoai]) VALUES (N'l04', N'nhà')
INSERT [dbo].[tho] ([_username], [_passWord], [_tenTho], [_diaChi], [_soDT], [type], [tinhtrang]) VALUES (N'abc', N'abc', N'abc', N'abc', N'4', 0, 1)
INSERT [dbo].[tho] ([_username], [_passWord], [_tenTho], [_diaChi], [_soDT], [type], [tinhtrang]) VALUES (N'dg', N'dg', N'dg', N'dg', N'5', 0, 1)
INSERT [dbo].[tho] ([_username], [_passWord], [_tenTho], [_diaChi], [_soDT], [type], [tinhtrang]) VALUES (N'x', N'x', N'x', N'x', N'1', 0, 1)
INSERT [dbo].[tho] ([_username], [_passWord], [_tenTho], [_diaChi], [_soDT], [type], [tinhtrang]) VALUES (N'y', N'y', N'y', N'y', N'2', 0, 1)
INSERT [dbo].[tho] ([_username], [_passWord], [_tenTho], [_diaChi], [_soDT], [type], [tinhtrang]) VALUES (N'z', N'z', N'z', N'z', N'3', 0, 1)
ALTER TABLE [dbo].[chuyenmon]  WITH CHECK ADD FOREIGN KEY([_maKieu])
REFERENCES [dbo].[kieusuachua] ([_maKieu])
GO
ALTER TABLE [dbo].[chuyenmon]  WITH CHECK ADD  CONSTRAINT [fk_cmt] FOREIGN KEY([_maTho])
REFERENCES [dbo].[tho] ([_username])
GO
ALTER TABLE [dbo].[chuyenmon] CHECK CONSTRAINT [fk_cmt]
GO
ALTER TABLE [dbo].[dichvu]  WITH CHECK ADD FOREIGN KEY([_maLoai])
REFERENCES [dbo].[loaidichvu] ([_maLoai])
GO
ALTER TABLE [dbo].[hopdong]  WITH CHECK ADD FOREIGN KEY([_maCM])
REFERENCES [dbo].[chuyenmon] ([_maCM])
GO
ALTER TABLE [dbo].[hopdong]  WITH CHECK ADD FOREIGN KEY([_maKH])
REFERENCES [dbo].[khachhang] ([_username])
GO
ALTER TABLE [dbo].[hopdong]  WITH CHECK ADD  CONSTRAINT [fk_tho] FOREIGN KEY([_matho])
REFERENCES [dbo].[tho] ([_username])
GO
ALTER TABLE [dbo].[hopdong] CHECK CONSTRAINT [fk_tho]
GO
ALTER TABLE [dbo].[kieusuachua]  WITH CHECK ADD FOREIGN KEY([_maDV])
REFERENCES [dbo].[dichvu] ([_maDV])
GO
USE [master]
GO
ALTER DATABASE [dichvugiadinh] SET  READ_WRITE 
GO
