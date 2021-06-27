USE [master]
GO
/****** Object:  Database [QLBanMyPham]    Script Date: 6/23/2021 9:32:28 AM ******/
CREATE DATABASE [QLBanMyPham]
GO
ALTER DATABASE [QLBanMyPham] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanMyPham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanMyPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanMyPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanMyPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanMyPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanMyPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanMyPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanMyPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanMyPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanMyPham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBanMyPham] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanMyPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanMyPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanMyPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanMyPham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanMyPham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanMyPham] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBanMyPham] SET QUERY_STORE = OFF
GO
USE [QLBanMyPham]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[TenCuaHang] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[SoTaiKhoan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [nvarchar](50) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongPhieuNhap]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongPhieuNhap](
	[MaPhieuNhap] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[SDT] [nvarchar](11) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[TenKH] [nvarchar](100) NULL,
	[SDT] [nvarchar](11) NOT NULL,
	[TichDiem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[GiamGia] [int] NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [nvarchar](20) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Fax] [nvarchar](100) NOT NULL,
	[SoTaiKhoan] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[Anh] [nvarchar](200) NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nvarchar](11) NULL,
	[MaCuaHang] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[MaNCC] [nvarchar](20) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[ThanhToan] [nvarchar](50) NULL,
	[NguoiNhap] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[SLTon] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[XuatXu] [nvarchar](100) NOT NULL,
	[ThuongHieu] [nvarchar](100) NOT NULL,
	[MaDM] [nvarchar](50) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamKM]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamKM](
	[MaKM] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[GiaKM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nvarchar](30) NOT NULL,
	[MatKhau] [nvarchar](30) NOT NULL,
	[ChucVu] [bit] NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinHD]    Script Date: 6/23/2021 9:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinHD](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [DienThoai], [SoTaiKhoan]) VALUES (N'CH01', N'CocoShop 1', N'128, Xuân Thủy, Hà Nội', N'0983154455', N'1222354468752')
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [DienThoai], [SoTaiKhoan]) VALUES (N'CH02', N'CocoShop 2', N'258 Bà Triệu, Hà Nội', N'0988888948', N'1244436554124')
GO
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM01', N'Trang điểm')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM02', N'Son môi')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM03', N'Chăm sóc da')
GO
INSERT [dbo].[DongPhieuNhap] ([MaPhieuNhap], [MaSP], [SoLuong], [GiaNhap]) VALUES (4, 1, 100, 100000.0000)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [SDT], [MaNV]) VALUES (4, CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'03844215324', N'NV02')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[KhachHang] ([TenKH], [SDT], [TichDiem]) VALUES (N'Nguyễn Thị Ngân', N'03844215324', 100)
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (1, 10, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (2, 20, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (3, 30, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (4, 40, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (5, 50, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (6, 60, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (7, 70, NULL, NULL)
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (8, 80, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Fax], [SoTaiKhoan]) VALUES (N'NCC01', N'Nhà cung cấp 01', N'0389425166', N'Bắc Giang', N'05040000', N'12235546998')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang]) VALUES (N'NV01', N'Trần Chiến Công', N'\images\tcc.png', 1, N'0384215155', N'CH01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang]) VALUES (N'NV02', N'Phạm Minh Tú', N'\images\tu.jpg', 0, N'0215464654', N'CH01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang]) VALUES (N'NV03', N'Nguyễn Viết Hoàng', N'\images\hoang.jpg', 1, N'0983154424', N'CH01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang]) VALUES (N'NV04', N'Vũ Đình Linh', N'\images\linh.jpg', 1, N'0876421343', N'CH01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang]) VALUES (N'NV05', N'Nguyễn Bá Khải', N'\images\khai.jpg', 1, N'0983154422', N'CH01')
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaCuaHang], [MaNCC], [NgayNhap], [ThanhToan], [NguoiNhap]) VALUES (4, N'CH01', N'NCC01', CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'100000', N'Phạm Minh Tú')
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh]) VALUES (1, N'Bobbi Brown Dưỡng Ẩm Da ', 100, 1990000.0000, N'Mỹ', N'Bobbi Brown', N'DM01', N'Hộp')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh]) VALUES (2, N'Combo Son Dưỡng Rohto ', 100, 88000.0000, N'Nhật Bản', N'Rohto', N'DM02', N'Hộp')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh]) VALUES (3, N'Nước tẩy trang hoa hồng', 100, 275000.0000, N'Việt Nam', N'Cocoon', N'DM03', N'Hộp')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[SanPhamKM] ([MaKM], [MaSP], [GiaKM]) VALUES (1, 1, NULL)
INSERT [dbo].[SanPhamKM] ([MaKM], [MaSP], [GiaKM]) VALUES (2, 2, NULL)
INSERT [dbo].[SanPhamKM] ([MaKM], [MaSP], [GiaKM]) VALUES (3, 3, NULL)
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'admin', N'A12345678', 1, N'NV01')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'chiencong', N'A12345678', 0, N'NV01')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'nguyenhoang', N'A12345678', 0, N'NV03')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'nguyenkhai', N'A12345678', 0, N'NV05')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'phamtu', N'A12345678', 0, N'NV02')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'vulinh', N'A12345678', 0, N'NV04')
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([SDT])
REFERENCES [dbo].[KhachHang] ([SDT])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
USE [master]
GO
ALTER DATABASE [QLBanMyPham] SET  READ_WRITE 
GO
