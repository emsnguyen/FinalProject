USE [PRN292_Project]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maker]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Website] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Maker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DeliveredDate] [date] NOT NULL,
	[DueDate] [date] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Pay]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Pay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[PaymentMethodID] [int] NOT NULL,
	[PaymentStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Order_Pay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[DateImported] [date] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TotalSold] [int] NOT NULL,
	[TotalLeft] [int] NOT NULL,
	[Image] [nvarchar](350) NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[MakerID] [int] NOT NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 7/15/2018 11:44:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Category]) VALUES (1, N'Guitar')
INSERT [dbo].[Category] ([ID], [Category]) VALUES (2, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Maker] ON 

INSERT [dbo].[Maker] ([ID], [Name], [Description], [Website]) VALUES (3, N'Alice', N'Nothing', N'www.guitar.alice.net')
INSERT [dbo].[Maker] ([ID], [Name], [Description], [Website]) VALUES (4, N'Elixir', N'Famous brand', N'abc.xyz')
SET IDENTITY_INSERT [dbo].[Maker] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (1, N'Đàn Guitar Acoustic FENDER – FA-100', CAST(N'2018-07-15' AS Date), N'Nổi bật trong tầm giá dưới 3 triệu
Dòng đàn bất hủ của FENDER, FA-100 luôn là lựa chọn hàng đầu của những người mới tập chơi muốn sử dụng thương hiệu FENDER. FA-100 là lựa chọn cơ bản, mức giá thấp nhất và cây này xứng đáng được gọi là cây đàn dành cho người mới tập chơi, là món ngon mà người mới chơi không nên bỏ qua.

Thế mạnh nổi bật nhất của FA-100 đó là sự gia công chi tiết, tỉ mỉ được làm bằng máy với sự chính xác gần như tuyệt đối. Phím của FA-100 được gia công rất tốt và rất mượt, trơn láng, rất khó bị rè dây so với các dòng đàn cùng tầm giá của Việt Nam.

Chất lượng âm thanh, vẻ đẹp gia công, độ bền sản phẩm rất tốt. Thiết kế dáng D mạnh mẽ, lớp sơn bóng mượt, dàn phím chuẩn vì được hoàn thiện 100% bằng máy với độ chính xác cao. Âm thanh vang sáng, phù hợp chơi đệm hát từ cơ bản đến nâng cao.

Sản phẩm chính hãng 100%. Sản phẩm được bảo hành 1 năm & bảo trì trọn đời. ', 10, 10, N'https://guitar.station.vn/wp-content/uploads/2018/06/Fender-FA-100-Dreadnought-Acoustic-Guitar-with-Gig-Bag-Natural-0-360x360.jpg', 2, 3, 1000000)
INSERT [dbo].[Product] ([ID], [Name], [DateImported], [Description], [TotalSold], [TotalLeft], [Image], [SubCategoryID], [MakerID], [Price]) VALUES (2, N'Guitar Classic Station CL-370', CAST(N'2018-01-01' AS Date), N'Toàn bộ gỗ nguyên miếng (full solid), sử dụng càng lâu âm thanh càng hay, đó là đặc điểm "ăn tiền" của gỗ nguyên miếng.

CL-370 là dòng đàn chuyên dùng cho các bạn chơi solo cổ điển, thích âm thanh trầm ấm của guitar classic. CL-370 âm thanh vang sáng, tiếng ấm vừa đủ, treb thanh.

Sản phẩm được bảo hành 1 năm, bảo trì trọn đời.', 1, 1, N'https://guitar.station.vn/wp-content/uploads/2018/03/dan-guitar-classic-cong-cuom.jpg', 1, 4, 1000000)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (1, 1, N'Classic')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (2, 1, N'Accoustic')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (3, 1, N'Ukulele')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (4, 1, N'Ghita điện')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (5, 1, N'Ghita bass')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (6, 2, N'Dây')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (7, 2, N'Capo')
INSERT [dbo].[SubCategory] ([ID], [CategoryID], [Name]) VALUES (8, 2, N'Equalizer/ Pickup')
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order_Pay]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pay_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Order_Pay] CHECK CONSTRAINT [FK_Order_Pay_Order]
GO
ALTER TABLE [dbo].[Order_Pay]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pay_PaymentMethod] FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethod] ([ID])
GO
ALTER TABLE [dbo].[Order_Pay] CHECK CONSTRAINT [FK_Order_Pay_PaymentMethod]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Maker] FOREIGN KEY([MakerID])
REFERENCES [dbo].[Maker] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Maker]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SubCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SubCategory]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
