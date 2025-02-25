USE [asmJava6]
GO
/****** Object:  Table [dbo].[account_roles]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account_roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[roleid] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[email] [varchar](255) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[password] [varchar](255) NULL,
	[photo] [nvarchar](500) NOT NULL,
	[register_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[brand]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brand](
	[brandid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cart_item_details]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_item_details](
	[cart_detailid] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[real_price] [float] NULL,
	[cartid] [int] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart_items]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cart_items](
	[cartid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cartid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detailid] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[unit_price] [float] NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orders](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[adress] [nvarchar](100) NOT NULL,
	[amount] [float] NULL,
	[order_date] [date] NULL,
	[phone] [varchar](255) NULL,
	[status] [nvarchar](50) NOT NULL,
	[user_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[discount] [int] NULL,
	[entered_date] [date] NULL,
	[image] [nvarchar](500) NULL,
	[name] [nvarchar](50) NOT NULL,
	[quantity] [int] NULL,
	[unit_price] [float] NULL,
	[brandid] [int] NULL,
	[categoryid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[roles]    Script Date: 14/08/2021 2:28:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[account_roles] ON 

INSERT [dbo].[account_roles] ([id], [username], [roleid]) VALUES (2, N'dammebongda021@gmail.com', N'ADMIN')
INSERT [dbo].[account_roles] ([id], [username], [roleid]) VALUES (6, N'datdong003@gmail.com', N'USER')
INSERT [dbo].[account_roles] ([id], [username], [roleid]) VALUES (7, N'datntpd03522@fpt.edu.vn', N'USER')
INSERT [dbo].[account_roles] ([id], [username], [roleid]) VALUES (13, N'gadathethoi99@gmail.com', N'USER')
INSERT [dbo].[account_roles] ([id], [username], [roleid]) VALUES (1, N'nguyenthanhdat210101@gmail.com', N'USER')
SET IDENTITY_INSERT [dbo].[account_roles] OFF
INSERT [dbo].[accounts] ([email], [name], [password], [photo], [register_date]) VALUES (N'dammebongda021@gmail.com', N'Nguyen Thanh Dat', N'123456789', N'received_441213277080691.jpg', CAST(N'2021-08-11' AS Date))
INSERT [dbo].[accounts] ([email], [name], [password], [photo], [register_date]) VALUES (N'datdong003@gmail.com', N'Phan Thi Huyen', N'123123', N'', CAST(N'2021-08-12' AS Date))
INSERT [dbo].[accounts] ([email], [name], [password], [photo], [register_date]) VALUES (N'datntpd03522@fpt.edu.vn', N'Đạt Nguyễn', N'123123', N'f0e946d3a9cc5e9207dd.jpg', CAST(N'2021-08-13' AS Date))
INSERT [dbo].[accounts] ([email], [name], [password], [photo], [register_date]) VALUES (N'gadathethoi99@gmail.com', N'Nguyen Thanh Dat', N'123456789', N'IMG20200524214233 (1).jpg', CAST(N'2021-08-14' AS Date))
INSERT [dbo].[accounts] ([email], [name], [password], [photo], [register_date]) VALUES (N'nguyenthanhdat210101@gmail.com', N'Nguyen Thanh Dat', N'123456789', N'eeda75e09aff6da134ee.jpg', CAST(N'2021-08-11' AS Date))
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([brandid], [name]) VALUES (1, N'MSI')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (2, N'DELL')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (3, N'HP')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (4, N'HAVIT')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (5, N'ASUS')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (6, N'LENOVO')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (7, N'AKKO')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (10, N'Darue')
INSERT [dbo].[brand] ([brandid], [name]) VALUES (16, N'Aukkey')
SET IDENTITY_INSERT [dbo].[brand] OFF
SET IDENTITY_INSERT [dbo].[cart_item_details] ON 

INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (71, 1, 55250000, 6, 2)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (72, 1, 4401000, 6, 3)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (73, 1, 16500000, 6, 4)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (74, 1, 1040000, 6, 9)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (127, 1, 16500000, 1, 4)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (128, 1, 22900000, 1, 5)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (129, 1, 4401000, 1, 3)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (130, 1, 386100, 1, 7)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (131, 1, 20000000, 1, 6)
INSERT [dbo].[cart_item_details] ([cart_detailid], [quantity], [real_price], [cartid], [productid]) VALUES (132, 1, 1040000, 1, 9)
SET IDENTITY_INSERT [dbo].[cart_item_details] OFF
SET IDENTITY_INSERT [dbo].[cart_items] ON 

INSERT [dbo].[cart_items] ([cartid], [username]) VALUES (1, N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[cart_items] ([cartid], [username]) VALUES (5, N'datdong003@gmail.com')
INSERT [dbo].[cart_items] ([cartid], [username]) VALUES (6, N'datntpd03522@fpt.edu.vn')
INSERT [dbo].[cart_items] ([cartid], [username]) VALUES (12, N'gadathethoi99@gmail.com')
SET IDENTITY_INSERT [dbo].[cart_items] OFF
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([categoryid], [name]) VALUES (1, N'Bàn Phím')
INSERT [dbo].[categories] ([categoryid], [name]) VALUES (2, N'Màn Hình')
INSERT [dbo].[categories] ([categoryid], [name]) VALUES (3, N'CPU')
INSERT [dbo].[categories] ([categoryid], [name]) VALUES (4, N'Tai Nghe')
INSERT [dbo].[categories] ([categoryid], [name]) VALUES (6, N'Laptop')
INSERT [dbo].[categories] ([categoryid], [name]) VALUES (8, N'Chuột')
INSERT [dbo].[categories] ([categoryid], [name]) VALUES (11, N'TWS')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (1, 4, 80000000, 1, 6)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (2, 2, 33000000, 1, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (3, 3, 68700000, 1, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (4, 3, 13203000, 1, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (5, 1, 22900000, 2, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (6, 1, 16500000, 2, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (7, 1, 386100, 2, 7)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (8, 1, 4401000, 2, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (9, 2, 8802000, 3, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (10, 2, 772200, 3, 7)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (11, 3, 3120000, 3, 9)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (12, 2, 110500000, 3, 2)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (13, 1, 386100, 4, 7)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (14, 1, 55250000, 4, 2)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (15, 1, 16500000, 4, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (16, 1, 1040000, 5, 9)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (17, 1, 379050, 5, 8)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (18, 1, 20000000, 5, 6)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (19, 1, 16500000, 6, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (20, 1, 22900000, 6, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (21, 1, 4401000, 6, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (22, 1, 4275000, 7, 13)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (23, 1, 1259100, 7, 11)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (24, 1, 540000, 7, 16)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (25, 1, 1040000, 8, 9)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (26, 1, 20000000, 8, 6)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (27, 1, 379050, 8, 8)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (28, 1, 379050, 9, 8)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (29, 1, 1040000, 9, 9)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (30, 1, 1040000, 10, 9)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (31, 1, 379050, 10, 8)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (32, 2, 33000000, 11, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (33, 3, 13203000, 11, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (34, 2, 45800000, 12, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (35, 1, 386100, 12, 7)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (36, 1, 20000000, 12, 6)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (37, 1, 16500000, 13, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (38, 1, 4401000, 13, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (39, 1, 22900000, 13, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (61, 1, 4401000, 21, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (62, 1, 22900000, 21, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (63, 1, 379050, 21, 8)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (68, 4, 17604000, 23, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (69, 2, 33000000, 23, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (70, 3, 165750000, 23, 2)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (71, 5, 1930500, 23, 7)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (72, 6, 6240000, 23, 9)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (73, 1, 4401000, 24, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (74, 1, 16500000, 24, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (75, 1, 55250000, 25, 2)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (76, 1, 4401000, 25, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (77, 1, 4401000, 26, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (78, 1, 16500000, 26, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (79, 1, 4401000, 27, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (80, 2, 33000000, 27, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (81, 1, 22900000, 27, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (82, 3, 49500000, 28, 4)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (83, 2, 8802000, 28, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (84, 4, 91600000, 28, 5)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (85, 5, 1930500, 28, 7)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (86, 2, 758100, 28, 8)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (117, 2, 8802000, 35, 3)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (118, 3, 1158300, 35, 7)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (119, 1, 1040000, 35, 9)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (120, 9, 4860000, 35, 16)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (121, 4, 44200000, 35, 17)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (122, 1, 55250000, 36, 2)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (123, 1, 20000000, 36, 6)
INSERT [dbo].[order_detail] ([order_detailid], [quantity], [unit_price], [orderid], [productid]) VALUES (124, 1, 379050, 36, 8)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (1, N'49 le the tiet lao bao huong hoa quang tri', 194903000, CAST(N'2021-08-11' AS Date), N'0941519704', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (2, N'asssssssssssssss', 44187100, CAST(N'2021-08-11' AS Date), N'0987654311', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (3, N'23456789098765432', 123194200, CAST(N'2021-08-12' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (4, N'123456789876543w', 72136100, CAST(N'2021-08-12' AS Date), N'0987654321', N'3', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (5, N'ádfghjkjhgfdsasdfb', 21419050, CAST(N'2021-08-12' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (6, N'12345678909876543', 43801000, CAST(N'2021-08-12' AS Date), N'0987654321', N'3', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (7, N'12345678998765', 6074100, CAST(N'2021-08-12' AS Date), N'0987654321', N'3', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (8, N'1234567898765', 21419050, CAST(N'2021-08-12' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (9, N'1234567890765432', 1419050, CAST(N'2021-08-12' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (10, N'123456789987654321', 1419050, CAST(N'2021-08-12' AS Date), N'0987654321', N'3', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (11, N'1234567890987654', 46203000, CAST(N'2021-08-12' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (12, N'23456789009876543', 66186100, CAST(N'2021-08-12' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (13, N'1234567987654', 43801000, CAST(N'2021-08-12' AS Date), N'0987654321', N'3', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (21, N'1234567898765432', 27680050, CAST(N'2021-08-13' AS Date), N'0987654321', N'3', N'datntpd03522@fpt.edu.vn')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (23, N'168 tang bat ho - thừa thiên huế', 224524500, CAST(N'2021-08-13' AS Date), N'0941519704', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (24, N'234567898765432', 20901000, CAST(N'2021-08-13' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (25, N'123456543', 59651000, CAST(N'2021-08-13' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (26, N'123456765432', 20901000, CAST(N'2021-08-13' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (27, N'1234567654321', 60301000, CAST(N'2021-08-13' AS Date), N'0987654321', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (28, N'167 Tăng Bạt Hổ -Thừa Thiên Huế', 152590600, CAST(N'2021-08-13' AS Date), N'0941519704', N'4', N'nguyenthanhdat210101@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (35, N'156 Tăng Bạt Hổ - Thừa Thiên Huế', 60060300, CAST(N'2021-08-14' AS Date), N'0941519704', N'4', N'gadathethoi99@gmail.com')
INSERT [dbo].[orders] ([orderid], [adress], [amount], [order_date], [phone], [status], [user_id]) VALUES (36, N'phan nay oke r nha', 75629050, CAST(N'2021-08-14' AS Date), N'0941519704', N'3', N'gadathethoi99@gmail.com')
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (2, N'Thương hiệu: MSI Dòng sản phẩm: Trident X Plus Màu sắc: Black Hệ điều hành: None Phần mềm: Drivers & MSI Utilities MSI Dragon center Anti-Virus (60 days trial) CPU: Intel® Core™ i7-9700K Processor Bo mạch chủ: Intel® Z390 Ổ cứng 1 x SSD 256G PCIE SSD 1 x HHD 1 TB (2.5") 7200rpm 1 x HDD 1TB (2.5") 7200rpm', 15, CAST(N'2021-08-11' AS Date), N'tải xuống (2).jfif', N'CPU MSI', 89, 65000000, 1, 3)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (3, N'Kích thước màn hình: 23.8Inch IPS - Độ phân giải: Full HD (1920x1080) - Cổng giao tiếp: HDMI, DisplayPort, VGA, USB', 10, CAST(N'2021-08-11' AS Date), N'tải xuống (1).jfif', N'Màn hình Dell P2419H 23.8Inch IPS', 88, 4890000, 2, 2)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (4, N'Phần Mềm Diệt Virus, Office chính hãng chỉ từ 150k', 0, CAST(N'2021-08-11' AS Date), N'tải xuống.jfif', N'Laptop ASUS Vivobook R564JA-UH51T', 2900, 16500000, 5, 6)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (5, N'Hàng chính hãng CPU Intel Core i7 10750H GPU Geforce GTX 1650 MaxQ Màn hình 15.6" FullHD (1920 x 1080). 144Hz, IPS Panel Hệ điều hành Windows 10 64Bit Home RAM DDR4 8GB (1 x 8GB) 3200MHz', 0, CAST(N'2021-08-11' AS Date), N'shopping.png', N'Laptop MSI GF63 10SC-020VN Đen', 68, 22900000, 1, 6)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (6, N'Đánh giá Laptop MSI Gaming GF75 Thin (10SC-013VN) Chính Hãng Laptop Gaming MSI GF75 Thin 10SC-013VN là chiếc laptop đầu tiên mang thiên hướng thiết kế mới, thiết kế công thái', 20, CAST(N'2021-08-11' AS Date), N'msi.png', N'Laptop MSI GF75 10SC- 013VN Đen', 60, 25000000, 1, 6)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (7, N'Mua Tai nghe chụp tai Havit i62 chính hãng - Giá tốt, bảo hành uy tín, giao hàng tận nơi toàn quốc. Mua ngay Tai nghe chụp tai Havit i62 tại đây.', 10, CAST(N'2021-08-11' AS Date), N'tainge.png', N'Tai nghe chụp tai Havit I62', 65, 429000, 4, 4)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (8, N'Mua Tai nghe Havit HV-H2232D chính hãng - Giá tốt, bảo hành uy tín, giao hàng tận nơi toàn quốc. Mua ngay Havit HV-H2232D tại đây', 5, CAST(N'2021-08-11' AS Date), N'h2232d.png', N'Tai nghe chụp tai Gaming Havit HV-H2232D', 156, 399000, 4, 4)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (9, N'Bàn phím AKKO 3087 Silent Thiết kế 87 phím gọn nhẹ Kết nối: USB Type C, có thể tháo rời Hỗ trợ NKRO Keycap: PBT Dye-Sub, OEM profile Sử dụng Akko Switch cho độ bền cao', 20, CAST(N'2021-08-11' AS Date), N'banphim1.png', N'Bàn phím cơ AKKO 3087 Silent', 1200, 1300000, 7, 1)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (11, N'Bàn phím Gaming Msi Vigor GK40', 10, CAST(N'2021-08-11' AS Date), N'banphim3.png', N'Bàn phím Gaming Msi Vigor GK40', 46, 1399000, 1, 1)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (12, N'Tấm nền IPS - Tối ưu hóa màu sắc và độ sáng màn hình Độ phân giải cao FHD - Các tựa game sẽ trông đẹp hơn, hiển thị nhiều chi tiết hơn Tần số quét 144Hz', 20, CAST(N'2021-08-11' AS Date), N'manhinh1.png', N'Màn hình MSI Optix G271', 68, 7800000, 1, 2)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (13, N'Màn hình Lenovo L24i-10 23.8 inch FHD (65D6KAC3VN)Bảo hành chính hãng', 5, CAST(N'2021-08-11' AS Date), N'manhinh2.png', N'Màn hình Lenovo L24i-10 23.8 inch FHD', 5, 4500000, 6, 2)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (14, N'Sản phẩm chính hãng Akko phân phối tại Việt Nam (Akko.vn & Maihoang.com.vn) Kích thước nhỏ gọn, dễ dàng mang theo Hỗ trợ NKRO Keycap 85', 0, CAST(N'2021-08-11' AS Date), N'banphim2.png', N'Bàn phím cơ AKKO 3108 – World Tour Tokyo R2', 89, 1900000, 7, 1)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (15, N'a', 0, CAST(N'2021-08-11' AS Date), N'laptop-msi-cua-nuoc-nao.jpg', N'msi test', 1, 23232, 1, 6)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (16, N'Sản phẩm chính hãng Havit Phân phối và bảo hành chính hãng 100% Bảo hành đổi mới 1-1 trong 12 tháng khi xảy ra lỗi từ nhà sản xuất Sản phẩm được bảo hành và hưởng các chính', 10, CAST(N'2021-08-11' AS Date), N'havit.png', N'Tai Nghe True Wireless HAVIT TW938', 56, 600000, 4, 4)
INSERT [dbo].[products] ([productid], [description], [discount], [entered_date], [image], [name], [quantity], [unit_price], [brandid], [categoryid]) VALUES (17, N'Chuột có dây giá rẻ mà chất', 0, CAST(N'2021-08-13' AS Date), N'tải xuống.jpg', N'Chuột Dareu', 80, 12000000, 7, 1)
SET IDENTITY_INSERT [dbo].[products] OFF
INSERT [dbo].[roles] ([id], [name]) VALUES (N'ADMIN', N'ADMIN')
INSERT [dbo].[roles] ([id], [name]) VALUES (N'USER', N'USER')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK9kyv3fwh0ogtp5sa340me9i4y]    Script Date: 14/08/2021 2:28:38 SA ******/
ALTER TABLE [dbo].[account_roles] ADD  CONSTRAINT [UK9kyv3fwh0ogtp5sa340me9i4y] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account_roles]  WITH CHECK ADD  CONSTRAINT [FK6kwduxfpjkk274099sn1p61xe] FOREIGN KEY([roleid])
REFERENCES [dbo].[roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[account_roles] CHECK CONSTRAINT [FK6kwduxfpjkk274099sn1p61xe]
GO
ALTER TABLE [dbo].[account_roles]  WITH CHECK ADD  CONSTRAINT [FKtfhhnp3896t3sqmv4agy6h7l9] FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([email])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[account_roles] CHECK CONSTRAINT [FKtfhhnp3896t3sqmv4agy6h7l9]
GO
ALTER TABLE [dbo].[cart_item_details]  WITH CHECK ADD  CONSTRAINT [FKakrv6l8tsyfp9sslrj00qtuvx] FOREIGN KEY([cartid])
REFERENCES [dbo].[cart_items] ([cartid])
GO
ALTER TABLE [dbo].[cart_item_details] CHECK CONSTRAINT [FKakrv6l8tsyfp9sslrj00qtuvx]
GO
ALTER TABLE [dbo].[cart_item_details]  WITH CHECK ADD  CONSTRAINT [FKkijvh6baar68cj1qlbga85up7] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([productid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart_item_details] CHECK CONSTRAINT [FKkijvh6baar68cj1qlbga85up7]
GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FKsbnqs2wn6yky394ff6d5fn79d] FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([email])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FKsbnqs2wn6yky394ff6d5fn79d]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK715ucxrvknue1cfnb458qh5n5] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([orderid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK715ucxrvknue1cfnb458qh5n5]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK8a52jf2d0glhvlvfnnirjtvsc] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([productid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK8a52jf2d0glhvlvfnnirjtvsc]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKfdghiqofe8gwujnn3kath52os] FOREIGN KEY([user_id])
REFERENCES [dbo].[accounts] ([email])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKfdghiqofe8gwujnn3kath52os]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([categoryid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK9q4x8op9vl9enjy7bk5qagjnh] FOREIGN KEY([brandid])
REFERENCES [dbo].[brand] ([brandid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK9q4x8op9vl9enjy7bk5qagjnh]
GO
