use master;
go
drop database IF EXISTS Coffee_Sale;
go
CREATE DATABASE Coffee_Sale;
go
use Coffee_Sale;
GO
CREATE TABLE [dbo].[ChiTietDonHangs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](10, 2) NULL,
	[Size] [varchar](10) NULL,
	[GhiChu] [nvarchar](1000) NULL,
	[id_sanpham] [int] NULL,
	[id_donhang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucs]    Script Date: 12/20/2023 11:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangs]    Script Date: 12/20/2023 11:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayDatHang] [datetime] NOT NULL,
	[TenKhachHang] [nvarchar](1000) NULL,
	[DiaChiNhanHang] [nvarchar](1000) NOT NULL,
	[SDT] [nvarchar](20) NOT NULL,
	[TrangThai] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 12/20/2023 11:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](255) NOT NULL,
	[Gia] [decimal](10, 2) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[Size] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](1000) NULL,
	[id_danhmuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 12/20/2023 11:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[VaiTro] [int] NULL,
	[NgayTao] [datetime] NULL,
	[GioiTinh] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHangs] ON 

INSERT [dbo].[ChiTietDonHangs] ([id], [SoLuong], [DonGia], [Size], [GhiChu], [id_sanpham], [id_donhang]) VALUES (1, 1, CAST(35000.00 AS Decimal(10, 2)), N'S', N'Ít đường', 1, 1)
INSERT [dbo].[ChiTietDonHangs] ([id], [SoLuong], [DonGia], [Size], [GhiChu], [id_sanpham], [id_donhang]) VALUES (2, 4, CAST(30000.00 AS Decimal(10, 2)), N'S', NULL, 2, 2)
INSERT [dbo].[ChiTietDonHangs] ([id], [SoLuong], [DonGia], [Size], [GhiChu], [id_sanpham], [id_donhang]) VALUES (3, 3, CAST(35000.00 AS Decimal(10, 2)), N'M', N'nhiều đá', 1, 3)
INSERT [dbo].[ChiTietDonHangs] ([id], [SoLuong], [DonGia], [Size], [GhiChu], [id_sanpham], [id_donhang]) VALUES (4, 2, CAST(35000.00 AS Decimal(10, 2)), N'S', NULL, 6, 4)
INSERT [dbo].[ChiTietDonHangs] ([id], [SoLuong], [DonGia], [Size], [GhiChu], [id_sanpham], [id_donhang]) VALUES (5, 1, CAST(35000.00 AS Decimal(10, 2)), N'Kh?ng l?', N'Nhiều đá nhé', 5, 4)
SET IDENTITY_INSERT [dbo].[ChiTietDonHangs] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucs] ON 

INSERT [dbo].[DanhMucs] ([id], [TenDanhMuc]) VALUES (1, N'Refresher')
INSERT [dbo].[DanhMucs] ([id], [TenDanhMuc]) VALUES (2, N'Nước Ép')
INSERT [dbo].[DanhMucs] ([id], [TenDanhMuc]) VALUES (3, N'Trà Sữa')
SET IDENTITY_INSERT [dbo].[DanhMucs] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHangs] ON 

INSERT [dbo].[DonHangs] ([id], [NgayDatHang], [TenKhachHang], [DiaChiNhanHang], [SDT], [TrangThai], [GhiChu]) VALUES (1, CAST(N'2023-12-30T03:01:12.345' AS DateTime), N'Vĩ', N'KTX Khu A', N'0123456789', 0, NULL)
INSERT [dbo].[DonHangs] ([id], [NgayDatHang], [TenKhachHang], [DiaChiNhanHang], [SDT], [TrangThai], [GhiChu]) VALUES (2, CAST(N'2023-12-30T03:02:23.456' AS DateTime), N'Lộc', N'KTX Khu B', N'0987654321', 0, NULL)
INSERT [dbo].[DonHangs] ([id], [NgayDatHang], [TenKhachHang], [DiaChiNhanHang], [SDT], [TrangThai], [GhiChu]) VALUES (3, CAST(N'2023-12-30T03:03:34.567' AS DateTime), N'Phong', N'Bcons Miền Đông', N'0192837465', 0, NULL)
INSERT [dbo].[DonHangs] ([id], [NgayDatHang], [TenKhachHang], [DiaChiNhanHang], [SDT], [TrangThai], [GhiChu]) VALUES (4, CAST(N'2023-12-30T03:04:12.345' AS DateTime), N'Huy', N'Đồng Nai', N'0987123456', 0, NULL)
SET IDENTITY_INSERT [dbo].[DonHangs] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([id], [TenSanPham], [Gia], [MoTa], [HinhAnh], [Size], [GhiChu], [id_danhmuc]) VALUES (1, N'Dâu Quế Tây', CAST(35000.00 AS Decimal(10, 2)), N'Strawberry Basil Lemonade
 
Thành Phần: Dâu Tây, Lá Quế
 
(Hình ảnh sản phẩm mang tính chất minh họa với mong muốn giúp khách hàng cảm nhận rõ hơn về món)', N'pexels-photo-2424832232707405.jpeg', N'S;M;L;', NULL, 1)
INSERT [dbo].[SanPhams] ([id], [TenSanPham], [Gia], [MoTa], [HinhAnh], [Size], [GhiChu], [id_danhmuc]) VALUES (2, N'Lá Dứa Than Tre', CAST(30000.00 AS Decimal(10, 2)), N'Pandan Charcoal
 
Thành Phần: Lá Dứa, Than Tre
 
(Hình ảnh sản phẩm mang tính chất minh họa với mong muốn giúp khách hàng cảm nhận rõ hơn về món)', N'sp-tra-sua-matcha232745126.jpg', N'S;M;L;Khổng lồ;', NULL, 1)
INSERT [dbo].[SanPhams] ([id], [TenSanPham], [Gia], [MoTa], [HinhAnh], [Size], [GhiChu], [id_danhmuc]) VALUES (3, N'Trà Bưởi Yuzu', CAST(40000.00 AS Decimal(10, 2)), N'Trà Bưởi Yuzu
 
Thành Phần: Trà Lài, Bưởi Hồng, Yuzu
 
(Hình ảnh sản phẩm mang tính chất minh họa với mong muốn giúp khách hàng cảm nhận rõ hơn về món)', N'cach-lam-nuoc-ep-oi-thom-ngon-de-uong-201910300940367150233132142.jpg', N'S;M;L;', NULL, 2)
INSERT [dbo].[SanPhams] ([id], [TenSanPham], [Gia], [MoTa], [HinhAnh], [Size], [GhiChu], [id_danhmuc]) VALUES (4, N'Nước ép dứa', CAST(35000.00 AS Decimal(10, 2)), N'Thành Phần: Dứa
 
(Hình ảnh sản phẩm mang tính chất minh họa với mong muốn giúp khách hàng cảm nhận rõ hơn về món)', N'20230420_Nuoc-ep-dua-co-chua-nhieu-vitamin-va-khoang-chat-233226016.jpg', N'S;M;L;Khổng lồ;', NULL, 2)
INSERT [dbo].[SanPhams] ([id], [TenSanPham], [Gia], [MoTa], [HinhAnh], [Size], [GhiChu], [id_danhmuc]) VALUES (5, N'Nước ép dâu Hồng Châu', CAST(35000.00 AS Decimal(10, 2)), N'Pink Guava Tea
 
Thành Phần: Hồng Trà, Ổi Hồng, Trân Châu Trắng
 
(Hình ảnh sản phẩm mang tính chất minh họa với mong muốn giúp khách hàng cảm nhận rõ hơn về món)', N'pexels-photo-3342301233714810.jpeg', N'M;L;Khổng lồ;', NULL, 2)
INSERT [dbo].[SanPhams] ([id], [TenSanPham], [Gia], [MoTa], [HinhAnh], [Size], [GhiChu], [id_danhmuc]) VALUES (6, N'Trà sữa Socola ', CAST(35000.00 AS Decimal(10, 2)), N'Trà Quả Mọng Anh Đào là sự kết hợp giữa trà thơm cùng quả mọng chua ngọt, thêm đài quả ngâm giòn giòn, đánh tan cơn khát.', N'tra-sua-truyen-thong-tran-chau233907596.png', N'S;M;L;', NULL, 3)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 

INSERT [dbo].[TaiKhoans] ([id], [TenNguoiDung], [Username], [Password], [VaiTro], [NgayTao], [GioiTinh]) VALUES (1, N'Quản Lý 1', N'admin', N'202cb962ac59075b964b07152d234b70', 0, CAST(N'2023-12-20T21:17:00.830' AS DateTime), NULL)
INSERT [dbo].[TaiKhoans] ([id], [TenNguoiDung], [Username], [Password], [VaiTro], [NgayTao], [GioiTinh]) VALUES (2, N'User Name 1', N'username1', N'202cb962ac59075b964b07152d234b70', 1, CAST(N'2023-12-20T21:17:00.830' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHangs] ADD  DEFAULT ('') FOR [Size]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ('') FOR [Size]
GO
ALTER TABLE [dbo].[TaiKhoans] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietDonHangs]  WITH CHECK ADD FOREIGN KEY([id_donhang])
REFERENCES [dbo].[DonHangs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHangs]  WITH CHECK ADD FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[SanPhams] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD FOREIGN KEY([id_danhmuc])
REFERENCES [dbo].[DanhMucs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [Coffee_Sale] SET  READ_WRITE 
GO
