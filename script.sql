﻿USE [ClotherShop]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 12/26/2019 5:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MASP] [int] NOT NULL,
	[MAHD] [int] NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [float] NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 12/26/2019 5:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGT] [int] NOT NULL,
	[GT] [nvarchar](50) NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/26/2019 5:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] NOT NULL,
	[TONGTIEN] [float] NULL,
	[NGAYDAT] [date] NULL,
	[NGAYGIAO] [date] NULL,
	[MAKH] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/26/2019 5:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] NOT NULL,
	[HOTEN] [nvarchar](200) NULL,
	[TAIKHOAN] [nvarchar](200) NULL,
	[MATKHAU] [nvarchar](200) NULL,
	[EMAIL] [nvarchar](200) NULL,
	[DIACHI] [nvarchar](max) NULL,
	[DIENTHOAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 12/26/2019 5:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MALSP] [int] NOT NULL,
	[TENLSP] [nvarchar](100) NULL,
 CONSTRAINT [PK_LOAISANPHAM_1] PRIMARY KEY CLUSTERED 
(
	[MALSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/26/2019 5:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] NOT NULL,
	[HOTEN] [nvarchar](200) NULL,
	[TAIKHOAN] [nvarchar](200) NULL,
	[MATKHAU] [nvarchar](200) NULL,
	[EMAIL] [nvarchar](200) NULL,
	[DIACHI] [nvarchar](max) NULL,
	[DIENTHOAI] [nvarchar](50) NULL,
	[MAGT] [int] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/26/2019 5:26:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[TENSP] [nvarchar](200) NULL,
	[ANHSP] [nvarchar](200) NULL,
	[SIZE] [varchar](20) NULL,
	[MAU] [varchar](20) NULL,
	[THUONGHIEU] [nvarchar](200) NULL,
	[CHATLIEU] [nvarchar](200) NULL,
	[MOTA] [nvarchar](max) NULL,
	[GIABD] [float] NULL,
	[NGAYDANG] [date] NULL,
	[MALSP] [int] NULL,
	[MAGIOITINH] [int] NULL,
	[SoLuongTon] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHD] ([MASP], [MAHD], [SOLUONG], [DONGIA]) VALUES (1, 6, 1, 150000)
INSERT [dbo].[ChiTietHD] ([MASP], [MAHD], [SOLUONG], [DONGIA]) VALUES (1, 7, 1, 150000)
INSERT [dbo].[ChiTietHD] ([MASP], [MAHD], [SOLUONG], [DONGIA]) VALUES (1, 8, 1, 150000)
INSERT [dbo].[ChiTietHD] ([MASP], [MAHD], [SOLUONG], [DONGIA]) VALUES (1, 9, 1, 150000)
INSERT [dbo].[ChiTietHD] ([MASP], [MAHD], [SOLUONG], [DONGIA]) VALUES (1, 10, 1, 150000)
INSERT [dbo].[ChiTietHD] ([MASP], [MAHD], [SOLUONG], [DONGIA]) VALUES (15, 11, 1, 199000)
INSERT [dbo].[ChiTietHD] ([MASP], [MAHD], [SOLUONG], [DONGIA]) VALUES (15, 12, 1, 199000)
INSERT [dbo].[GioiTinh] ([MaGT], [GT]) VALUES (1, N'Nam')
INSERT [dbo].[GioiTinh] ([MaGT], [GT]) VALUES (2, N'Nữ')
INSERT [dbo].[HOADON] ([MAHD], [TONGTIEN], [NGAYDAT], [NGAYGIAO], [MAKH], [Status]) VALUES (6, 150000, CAST(N'2019-12-10' AS Date), NULL, 1, 1)
INSERT [dbo].[HOADON] ([MAHD], [TONGTIEN], [NGAYDAT], [NGAYGIAO], [MAKH], [Status]) VALUES (7, 150000, CAST(N'2019-12-10' AS Date), NULL, 1, 1)
INSERT [dbo].[HOADON] ([MAHD], [TONGTIEN], [NGAYDAT], [NGAYGIAO], [MAKH], [Status]) VALUES (8, 150000, CAST(N'2019-12-10' AS Date), NULL, 1, 1)
INSERT [dbo].[HOADON] ([MAHD], [TONGTIEN], [NGAYDAT], [NGAYGIAO], [MAKH], [Status]) VALUES (9, 150000, CAST(N'2019-12-10' AS Date), NULL, 1, 0)
INSERT [dbo].[HOADON] ([MAHD], [TONGTIEN], [NGAYDAT], [NGAYGIAO], [MAKH], [Status]) VALUES (10, 150000, CAST(N'2019-12-10' AS Date), NULL, 1, 0)
INSERT [dbo].[HOADON] ([MAHD], [TONGTIEN], [NGAYDAT], [NGAYGIAO], [MAKH], [Status]) VALUES (11, 199000, CAST(N'2019-12-23' AS Date), NULL, 7, NULL)
INSERT [dbo].[HOADON] ([MAHD], [TONGTIEN], [NGAYDAT], [NGAYGIAO], [MAKH], [Status]) VALUES (12, 199000, CAST(N'2019-12-25' AS Date), NULL, 7, 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [TAIKHOAN], [MATKHAU], [EMAIL], [DIACHI], [DIENTHOAI]) VALUES (1, N'hung', N'hung', N'hung', N'hung', N'hung', N'hung')
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [TAIKHOAN], [MATKHAU], [EMAIL], [DIACHI], [DIENTHOAI]) VALUES (7, N'Nguyen dang hung', N'16520477', N'hung98', N'danghungx8@gmail.com', N'thu duc', N'0968735943')
INSERT [dbo].[LOAISANPHAM] ([MALSP], [TENLSP]) VALUES (1, N'Quần jean')
INSERT [dbo].[LOAISANPHAM] ([MALSP], [TENLSP]) VALUES (2, N'Quần Short')
INSERT [dbo].[LOAISANPHAM] ([MALSP], [TENLSP]) VALUES (3, N'Áo sơ mi')
INSERT [dbo].[LOAISANPHAM] ([MALSP], [TENLSP]) VALUES (4, N'Áo thun')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [TAIKHOAN], [MATKHAU], [EMAIL], [DIACHI], [DIENTHOAI], [MAGT]) VALUES (1, N'nguyen tien dat', N'nv1', N'nv1', N'tiendat98', N'hhh', N'0968735944', 1)
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [TAIKHOAN], [MATKHAU], [EMAIL], [DIACHI], [DIENTHOAI], [MAGT]) VALUES (2, N'Nguyễn Đat', N'Admin', N'dat657128', N'dat0477@gm.uit.edu.vn', N'19/9 Tân Lập', N'0968375943', 1)
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (1, N'Quần Jean Nam Trơn Xanh Wash', N'QuaaJeanXanh.jpg', N'M', N'xanh', N'Việt Nam', N'Jean', N'<p>Chất vải Jean d&agrave;y dặn, hoạ tiết đơn giản nhưng rất thu h&uacute;t. Nhanh tay lựa kh&aacute;ch nh&eacute; :) 💯 Cam kết giống ảnh, chất đẹp 100%, giặt kh&ocirc;ng phai m&agrave;u, nhiều mẫu đa dạng kh&aacute;c nhau</p>', 140000, NULL, 1, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (2, N'Quần Jean Nam Rách Wash', N'JeanXanh.jpg', N'M', N'Xanh', N'Việt Nam', N'Coton', N'Quần jeans chất liệu cotton US, co giãn.
Phom skinny, cạp thường, cài cúc, khóa phía trước.
Có 5 túi.
Thích hợp mặc quanh năm. Phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với áo phông, áo sơ mi, giày thể thao, giày lười,…', 549000, NULL, 1, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (3, N'Quần Jean Nam Đee cào cào', N'JeanĐencaocao.jpg', N'M', N'Ðen', N'Việt Nam', N'Cotton', N'Quần jeans chất liệu cotton US, co giãn.
Phom slim, cạp thường, cài cúc, khóa phía trước.
Có 5 túi.
Thích hợp mặc quanh năm. Phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với áo phông, áo sơ mi, giày thể thao, giày lười,…', 549000, NULL, 1, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (4, N'Quần Jean Nam', N'JeanXanhTrang.jpg', N'M', N'Xanh Trang', N'Việt Nam', N'98% cotton 2% spandex', N'Quần jeans chất liệu cotton US, co giãn.
Phom skinny, cạp thường, cài cúc, khóa phía trước.
Có 5 túi.
Thích hợp mặc quanh năm. Phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với áo phông, áo sơ mi, giày thể thao, giày lười,…', 549000, NULL, 1, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (5, N'Quần Short đen nam', N'ShortĐenNam.jpg', N'M', N'Ðen', N'Việt Nam', N'100% polyester', N'Quần shorts chất liệu polyester.
Phom regular, cạp chun, cài cúc và khoá phía trước.
Có túi phía trước và sau.
Phù hợp mặc mùa hè.
Chất vải co giãn, thấm mồ hôi tốt, thiết kế đơn giản, phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với với áo phông, giày thể thao,..', 399000, NULL, 2, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (6, N'QUẦN SHORTS KHAKI NAM', N'ShortKakiNamXam.jpg', N'M', N'Xám', N'Việt Nam', N'98% cotton 2% spandex', N'Quần khaki co giãn nhẹ.
Phom slim, quần cộc, cạp thường.
4 Cái khoá trước, khuy nhựa.
Mặc thoải mái, dễ kết hợp  với áo phông, sơ mi ngắn tay', 449000, NULL, 2, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (7, N'QUẦN SHORTS NAM', N'ShortNam-Đen.jpg', N'M', N'Ðen', N'Việt Nam', N'60% cotton 40% polyester', N'Quần shorts chất liệu vảy cá.
Phom dáng Regular, trơn, thoải mái năng động.
Có thể kết hợp  với áo ba lỗ, T-shirt in hình khỏe khoắn', 349000, NULL, 2, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (8, N'QUẦN SHORTS NAM', N'ShortNamĐen.jpg', N'M', N'Ðen', N'Việt Nam', N'94% cotton 3% nylon 3% spandex', N'Quần shorts cotton có co giãn .
Dáng regular, cạp chun, có dây luồn cạp.
Mặc quanh năm, tập luyện , thoải mái, dễ dàng. Kết hợp áo tanktop, áo phông, giày thể thao.', 200000, NULL, 2, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (9, N'QUẦN SHORTS NAM', N'Quần-ShortđenNam.jpg', N'M', N'Ðen', N'Việt Nam', N'100% cotton', N'Quần shorts khaki cotton.
Phom regular, cạp thường, có 2 túi hộp sườn đùi.
Cái khoá kim loại, cúc nhựa.
Mặc thoải mái , dễ kết hợp với áo phông, sơ mi ngắn tay', 249000, NULL, 2, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (10, N'QUẦN SHORTS NAM HỌA TIẾT', N'ShortNamHoaTiet.jpg', N'M', N'Tong hop mau', N'Việt Nam', N'100% cotton', N'Quần shorts khaki cotton họa tiết san hô.
Phom regular cạp thường.
Cúc nhựa,khóa kim loại.
Phù hợp khi đi chơi biển, thoải mái, cá tính. Có thể kết hợp với áo phông.', 349000, NULL, 2, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (11, N'ÁO SƠ MI NAM', N'SoMiSocXanh.jpg', N'M', N'Xanh dam', N'Viêt Nam', N'100% cotton', N'Áo sơ mi denim cotton họa tiết kẻ sọc.
Phom regular, cổ đức, tay dài.
Có túi ngực, cài cúc phía trước.
Thích hợp mặc quanh năm. Kiểu dáng đơn giản, lịch sự phù hợp nhiều hoàn cảnh.
Có thể phối với nhiều dáng quần: quần jeans, khak, giày lười, giày tây', 599000, NULL, 3, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (12, N'ÁO SƠ MI NAM', N'SoMiCaroXanh.jpg', N'M', N'Xanh duong', N'VietNam', N'100% Cotton', N'Áo sơ mi nam', 499000, NULL, 3, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (13, N'ÁO SƠ MI NAM', N'SoMiSocTrang.jpg', N'M', N'Trang Xanh', N'Việt Nam', N'50% bamboo 50% polyester', N'Áo sơ mi bamboo pha kẻ caro.
Phom regular, cổ đức, tay dài.
Đơn giản, lịch sự rất phù hợp mặc nơi công sở. Có thể kết hợp với quần âu, quần khaki, giày tây.', 549000, NULL, 3, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (14, N'ÁO SƠ MI NAM', N'SoMiCaroXanh.jpg', N'M', N'Ðo Hong', N'Việt Nam', N'100% cotton', N'Dáng thông thường (regular)
Cổ đức, tay dài', 599000, NULL, 3, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (15, N'ÁO MẶC NHÀ NAM', N'AoMacNhaNam.jpg', N'M', N'Xanh', N'Việt Nam', N'100% Cotton', N'Áo mặc nhà nam', 199000, CAST(N'2019-10-12' AS Date), 4, 1, 9)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (16, N'Áo Thun Xanh Trắng', N'ThunTrangXanh.jpg', N'M', N'Xanh Trang', N'Việt Nam', N'100% Cotton', N'Áo mặc nhà nam
Chất liệu cotton mềm mại, thấm hút mồ hôi tốt, mang lại cảm giác thoải mái cho người mặc
Đặc biệt: Sản phẩm đạt chứng chỉ an toàn OEKO Tex Class 2 - Chứng nhận chỉ dành sản phẩm đạt các yêu cầu khắt khe về tồn dư hóa chất, dây phai màu', 250000, NULL, 4, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (17, N'ÁO MẶC NHÀ NAM IN HÌNH', N'ThunXanhNcBien.jpg', N'M', N'Xanh nuoc Bien', N'Việt Nam', N'100% cotton', N'Áo mặc nhà  nam chất liệu 100%cotton, hình in trước ngực.
Phom regular, cổ tròn, tay ngắn.
Cảm giác thoải mái, dễ chịu khi mặc ở nhà', 199000, NULL, 4, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (18, N'ÁO BA LỖ NAM', N'ThunBaLo.jpg', N'M', N'Ðen', N'Việt Nam', N'100% Cotton', N'Combo Áo ba lỗ nam', 199000, NULL, 4, 1, 4)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (19, N'Áo thun trắng', N'ThunTrang.jpg', N'M', N'Trang', N'Việt Nam', N'100% cotton', N'Cổ tròn, tay ngắn.
Cảm giác thoải mái, dễ chịu khi mặc ở nhà', 149000, NULL, 4, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (20, N'Thun sọc trắng', N'ThunSocTrang.jpg', N'M', N'Ðen trang', N'Việt Nam', N'100% Cotton', N'Áo dài tay nam', 299000, NULL, 4, 1, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (21, N'Quần Jean nữ xanh đậm trơn', N'JeanNuXanhDamTron.jpg', N'M', N'Xanh dam', N'Việt Nam', N'85% cotton 13% polyester 2% spandex', N'Quần jeans coton co giãn.
Phom slim , cạp thường, cài cúc, khóa phía trước.
Có 5 túi.
Thích hợp mặc quanh năm. Phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với áo phông, áo sơ mi, giày thể thao, giày lười,…', 499000, NULL, 1, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (22, N'Quần Jean dài nữ', N'JeanNuXanh.jpg', N'M', N'Xanh Trang', N'Việt Nam', N'85% cotton 13% polyester 2% spandex', N'Quần jeans coton pha có co giãn.
Phom ôm sát, cạp thường, cài cúc, khóa phía trước.
Có 5 túi.
Thích hợp mặc quanh năm. Phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với áo phông, áo sơ mi, giày thể thao, giày lười,…', 499000, NULL, 1, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (23, N'Quần Jean dài nữ', N'JeanĐenNu.jpg', N'M', N'Ðen', N'Việt Nam', N'69% cotton 30% polyester 1% spandex', N'Quần jeans coton pha có co giãn.
Phom ôm sát, cạp thường, cài cúc, khóa phía trước.
Có 5 túi.Thích hợp mặc quanh năm. Phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với áo phông, áo sơ mi, giày thể thao, giày lười,…', 499000, NULL, 1, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (24, N'Quần Jean dài nữ', N'JeanNuRack.jpg', N'M', N'Xanh', N'Việt Nam', N'98% cotton 2% spandex', N'Quần jeans cotton có co giãn.
Phom slim, cạp thường, cài cúc , kéo khoác phía trước.
Có 5 túi, giặt mài xước nhẹ, gấu xỏa. Thích hợp mặc quanh năm. Phù hợp nhiều hoàn cảnh. Dễ dàng kết hợp với áo phông, áo sơ mi, giày thể thao, giày lười,…', 499000, NULL, 1, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (25, N'QUẦN SHORTS NHUNG TĂM NỮ', N'ShortNhungTamNu.jpg', N'M', N'Ðen', N'Việt Nam', N'100%cotton', N'Quần shorts nhung tăm nữ', 449000, NULL, 2, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (26, N'QUẦN SHORTS NỮ', N'ShortJeanNư.jpg', N'M', N'Ðen', N'Việt Nam', N'98% cotton 2% spandex', N'Quần khaki chất liệu co giãn.
Phom regular, cạp thường, 4 túi
Cài phía trước bằng khóa kéo và khuy nhựa.
Thoải mái, dễ dàng, kết hợp được với nhiều kiểu trang phục như áo phông, giày thể thao hoặc áo blouse và giày cao gót', 349000, NULL, 2, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (27, N'Short Nữ Ngắn', N'ShortNuNgan.jpg', N'M', N'Xanh', N'Việt Nam', N'98% cotton 2% spandex', N'Quần shorts denim chất liệu co giãn.
Phom regular, cạp cao, dáng A, 5 túi.
Cài phía trước bằng khóa kéo và khuy kim loại.
Thân mài rách nhẹ, gấu lơ vê, hiệu ứng giặt hạ màu.
Phù hợp mặc quanh năm, thoải mái, dễ dàng. Kết hợp được với nhiều kiểu trang phục như áo phông, áo sơ mi, giày thể thao hoặc giày cao gót', 449000, NULL, 2, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (28, N'Sơ mi nữ dài', N'SoMiNuXanh.jpg', N'M', N'Xanh dam', N'Việt Nam', N'100% cotton', N'Áo sơ mi denim cotton.
Phom regular, cổ đức, tay dài. "
Thích hợp mặc quanh năm. Kiểu dáng đơn giản, năng động, phù hợp nhiều hoàn cảnh.
Có thể phối với nhiều dáng quần: quần jeans, khak, giày lười, giày thể thao.', 499000, NULL, 3, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (29, N'ÁO SƠ MI NỮ HỌA TIẾT KẺ', N'SoMiNuCaro.jpg', N'M', N'Xanh Nuoc bien', N'Việt Nam', N'100% cotton', N'Áo sơ mi cotton kẻ ngang.. Phom dáng Regular fit, cổ thuyền, tay chờm.
Đơn giản, mộc mạc. Phù hợp nhiều hoàn cảnh. Kết hợp với quần khaki,jeans, với sandal, giày bệt.', 199000, NULL, 3, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (30, N'ÁO SƠ MI NỮ HỌA TIẾT KẺ', N'SomiNuKeDoc.jpg', N'M', N'Xanh la chuoi', N'Việt Nam', N'100% cotton', N'Áo kiểu Tencel Lyocell kẻ sọc.
Phom regular, cổ tròn rộng, tay lỡ cách điệu .
Đơn giản, nhẹ nhàng, nữ tính phù hợp nhiều hoàn cảnh. Kết hợp với quần short và jeans', 149000, NULL, 3, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (31, N'Áo sơ mi nữ ', N'SoMiNuDo.jpg', N'M', N'Ðo', N'Việt Nam', N'100% Cotton', N'Áo sơ mi Cotton USA
Phom dáng Regular fit, cổ tàu cài khuy, tay dài có măng séc, gấu đuôi tôm.
Đơn giản,  mộc mạc. Phù hợp nhiều hoàn cảnh. Kết hợp với quần khaki, jeans, với sandal, giày bệt.', 99000, NULL, 3, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (32, N'Áo thun nữ trắng', N'THunNuTrang.jpg', N'M', N'Trang', N'Việt Nam', N'100% Cotton', N'Áo mặc nhà chất liệu cotton in nhỏ.
Phom dáng regular, cổ tròn tay dài.
Cảm giác thoải mái khi mặc ở nhà.
Phù hợp mặc vào mùa thu đông.', 199000, NULL, 4, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (33, N'Áo thun Xanh nữ', N'THunXanhNu.jpg', N'M', N'Xanh la cay', N'Việt Nam', N'100% Cotton', N'Áo mặc nhà nữ', 149000, NULL, 4, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (34, N'Áo thun nữ HelloKitti', N'ThunNuHelloKitti.jpg', N'M', N'vàng trang', N'Việt Nâm', N'100% Cotton', N'Áo phông Cotton US, in hình.
Phom Regular, cổ tròn, tay raglan.
Cảm giác thoải mái, dễ chịu khi mặc ở nhà', 199000, NULL, 4, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (35, N'Áo thun nữ in hình', N'AoThunNuInHinh.jpg', N'M', N'Trang', N'Việt Nam', N'100% Cotton', N'Áo mặc nhà nữ chất liệu 100%cotton, hình in trước ngực.
Phom regular. cổ tròn, tay ngắn.
Cảm giác thoải mái, dễ chịu khi mặc ở nhà', 99000, NULL, 4, 2, 10)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [ANHSP], [SIZE], [MAU], [THUONGHIEU], [CHATLIEU], [MOTA], [GIABD], [NGAYDANG], [MALSP], [MAGIOITINH], [SoLuongTon]) VALUES (54, N'test', N'Image_1.jpg', N'M', N'd?', N'VN', N'len', N'<p>Th&ecirc;m m&ocirc; tả cho sản phẩm</p>', 160000, CAST(N'2019-12-05' AS Date), 1, 1, 10)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HOADON]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_SANPHAM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_GioiTinh] FOREIGN KEY([MAGT])
REFERENCES [dbo].[GioiTinh] ([MaGT])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_GioiTinh]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_GioiTinh] FOREIGN KEY([MAGIOITINH])
REFERENCES [dbo].[GioiTinh] ([MaGT])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_GioiTinh]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISANPHAM] FOREIGN KEY([MALSP])
REFERENCES [dbo].[LOAISANPHAM] ([MALSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISANPHAM]
GO
