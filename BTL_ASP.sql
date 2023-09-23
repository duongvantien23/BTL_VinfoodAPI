Create database BTL_API
go
use BTL_API
go
CREATE TABLE [dbo].[SanPhams](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMuc] [int] NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[AnhDaiDien] [nvarchar](350) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaGiam] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[LuotXem] [int] NULL,
	[DacBiet] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ChiTietSanPhams](
	[MaChiTietSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[MoTa] [nvarchar](350) NOT NULL,
	[ChiTiet] [nvarchar](max) NULL,
 CONSTRAINT [PK_DetailProducts] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[KhachHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[HoaDons](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NgayDuyet] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[Diachi] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[ThoiGianGiaoHang] [datetime] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DetailBill] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[HoaDonNhaps](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaPhanPhoi] [int] NULL,
	[NgayTao] [datetime] NULL,
	[KieuThanhToan] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[HangSanXuats](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[LinkWeb] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[NhaPhanPhois](
	[MaNhaPhanPhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[TaiKhoans](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTaiKhoan] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[LoaiTaiKhoans](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
 CONSTRAINT [PK_TypeAccounts] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ChiTietTaiKhoans](
	[MaChitietTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
 CONSTRAINT [PK_InformationAccounts] PRIMARY KEY CLUSTERED 
(
	[MaChitietTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[TinTucs](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[MoTa] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[ChuyenMucs](
	[MaChuyenMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMucCha] [int] NULL,
	[TenChuyenMuc] [nvarchar](50) NULL,
	[DacBiet] [bit] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[CaiDats](
	[Id] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[GioLamViec] [nvarchar](50) NULL,
	[GiaoHang] [nvarchar](50) NULL,
	[HoanTien] [nvarchar](50) NULL,
	[SDTLienHe] [nvarchar](50) NULL,
	[EmailLienHe] [nvarchar](50) NULL,
	[FaceBook] [nvarchar](max) NULL,
	[MatKhauMail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
--Thêm dữ liệu vào bảng
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (55, 37, N'Máy chạy bộ điện đa năng MHT-400', N'/Images/Products/1090_may_cay_bo_dien_da_nang_mht_400.JPG', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (56, 37, N'Máy chạy bộ điện đa năng MHT-1809AD', N'/Images/Products/250_530_may_chay_bo_dien_mh_1809ad.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (57, 37, N'Máy chạy bộ điện OMA-1610CA', N'/Images/Products/250_885_1910.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (58, 37, N'Máy chạy bộ điện đa năng 8018', N'/Images/Products/250_1168_may_chay_bo_dien_8018_9.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (59, 38, N'Máy tập chạy bộ cơ KL-9835', N'/Images/Products/250_151_may_tap_chay_bo_co_kl_9835.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (60, 38, N'Máy chạy bộ cơ KL-9938', N'/Images/Products/250_835_may_chay_bo_co_kl_9938.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (61, 38, N'Máy chạy bộ cơ DL-916', N'/Images/Products/250_585_may_tap_chay_bo_co_kl_805_3_.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (62, 38, N'Máy chạy bộ cơ đa năng động lực KL 9919 (DL-0020)', N'/Images/Products/250_153_may_chay_bo_co_kl9919.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (63, 39, N'Quả bóng đá CB 4.114', N'/Images/Products/250_931_901_qua_bong_da_ucv_4_114.jpg', CAST(220000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (64, 39, N'Quả bóng đá Fus 2.76', N'/Images/Products/250_930_qua_bong_da_futsal_fus_2_76.PNG', CAST(270000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (65, 39, N'Quả bóng đá may số 2 Euro 2012', N'/Images/Products/250_928_qua_bong_da_may_so_2_euro_2012.PNG', CAST(100000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (66, 39, N'Quả bóng đá số 4 may không In D', N'/Images/Products/250_924_qua_bong_da_may_so_4_may_khong_in_d.PNG', CAST(100000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (67, 39, N'Quả bóng đá CM 5.21', N'/Images/Products/250_918_qua_bong_da_cm_5_21.jpg', CAST(120000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (68, 40, N'Quả bóng chuyền DL 200', N'/Images/Products/250_935_qua_bong_chuyen_dl_200.PNG', CAST(105000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (69, 40, N'Quả bóng chuyền DL 240M3', N'/Images/Products/250_934_qua_bong_chuyen_ebete_dl_240m3.PNG', CAST(140000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (70, 40, N'Quả bóng chuyền DL 220C', N'/Images/Products/250_933_qua_bong_chuyen_dl_220c.PNG', CAST(190000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (71, 40, N'Quả bóng chuyền DL 210M3', N'/Images/Products/250_932_qua_bong_chuyen_dl_210m3.PNG', CAST(210000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (72, 40, N'Quả bóng chuyền DL210C', N'/Images/Products/250_929_qua_bong_chuyen_hunter_dl210c_1.PNG', CAST(200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (73, 41, N'VỢT CẦU LÔNG FORZA MEGA SPEED 77', N'/Images/Products/250_805_vot_cau_long_speed_77.jpg', CAST(720000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (74, 41, N'VỢT CẦU LÔNG BABOLAT SATELITE ', N'/Images/Products/250_804_vot_cau_long_6_0_life1.jpg', CAST(1200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (75, 41, N'VỢT CẦU LÔNG FORZA NANO FLEX ', N'/Images/Products/250_803_vot_cau_long_forza_nano_flex_7800.jpg', CAST(1200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet]) VALUES (76, 41, N'CỘT CẦU LÔNG DI ĐỘNG', N'/Images/Products/250_1146_cot_cau_long_di_dong.PNG', CAST(1800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, 0, 0)

--dữ liệu khách hàng
SET IDENTITY_INSERT [dbo].[KhachHangs] ON 

INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (0, N'Dương Văn Tiến', 0, N'Hưng Yên', N'0399269729', N'tienlacoste112@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (1, N'Nguyễn Mai Gia Bảo', 0, N'Hưng Yên', N'0987446230', N'baonasa1@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (2, N'Nguyễn Mai Hoa', 0, N'Hà Nội', N'0323232211', N'maihoa@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (3, N'Lê Hà Vy', 0, N'Hà Nội', N'324234234', N'havy@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (4, N'Lê Khánh Duy', 0, N'Hà Nội', N'09666226444', N'khanhduy@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHangs] OFF
GO