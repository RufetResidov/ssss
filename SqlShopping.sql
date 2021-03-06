USE [Shopping]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24.05.2021 11:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24.05.2021 11:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[UserId] [int] NULL,
	[Count] [int] NULL,
	[PurchaseDate] [datetime] NULL,
	[TotalPrice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 24.05.2021 11:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[price] [decimal](18, 0) NULL,
	[PunlishDate] [datetime] NULL,
	[Count] [int] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24.05.2021 11:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_to_Roles]    Script Date: 24.05.2021 11:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_to_Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24.05.2021 11:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](80) NULL,
	[Password] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Fullname]) VALUES (1, N'notebook')
INSERT [dbo].[Categories] ([Id], [Fullname]) VALUES (2, N'Tv')
INSERT [dbo].[Categories] ([Id], [Fullname]) VALUES (3, N'Phone')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (2, N'ASus ', CAST(2000 AS Decimal(18, 0)), CAST(N'2021-05-05T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (3, N'samsung', CAST(1500 AS Decimal(18, 0)), CAST(N'2021-05-07T00:00:00.000' AS DateTime), 8, 3)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (4, N'Iphone ', CAST(1000 AS Decimal(18, 0)), CAST(N'2021-04-08T00:00:00.000' AS DateTime), 7, 3)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (5, N'Huawei', CAST(300 AS Decimal(18, 0)), CAST(N'2020-05-08T00:00:00.000' AS DateTime), 8, 3)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (6, N'Tv Sony', CAST(5000 AS Decimal(18, 0)), CAST(N'2021-01-20T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (7, N'Daewo', CAST(200 AS Decimal(18, 0)), CAST(N'1997-09-18T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (8, N'Hoffman', CAST(1200 AS Decimal(18, 0)), CAST(N'2021-04-04T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (9, N'HP', CAST(3200 AS Decimal(18, 0)), CAST(N'2021-05-07T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [price], [PunlishDate], [Count], [CategoryId]) VALUES (10, N'Dell', CAST(1100 AS Decimal(18, 0)), CAST(N'2020-07-09T00:00:00.000' AS DateTime), 4, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [name]) VALUES (1, N'User')
INSERT [dbo].[Roles] ([Id], [name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[User_to_Roles] ON 

INSERT [dbo].[User_to_Roles] ([Id], [RoleId], [UserId]) VALUES (1, 1, 21)
INSERT [dbo].[User_to_Roles] ([Id], [RoleId], [UserId]) VALUES (2, 1, 22)
INSERT [dbo].[User_to_Roles] ([Id], [RoleId], [UserId]) VALUES (3, 1, 23)
INSERT [dbo].[User_to_Roles] ([Id], [RoleId], [UserId]) VALUES (4, 1, 24)
SET IDENTITY_INSERT [dbo].[User_to_Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (1, N'qwe', N'qweq', N'qw')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (2, N'SAlam', N'Salam@gmail.com', N'12345')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (3, N'asdsd', N'qwew', N'132')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (4, N'Rufet', N'rufet@gmail.com', N'1234')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (17, N'sdfsdf', N'sdf', N'1234')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (18, N'Ferhad', N'ferhad@gmail.com', N'12345')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (19, N'fuad', N'fuad@gmail.com', N'*�����k�t�r��C$ǦS׮� 6���')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (20, N'qalib', N'qalib@gmail.cm', N'Y�G�*���Y��t�����Y�����s���')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (21, N'rufet', N'rufet@', N'�gB��\v��U�g�6#ȳ��E��x��F�')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (22, N'sd', N'dfsd', N'�e�Y B/�A~Hg��O��J?��~������z�')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (23, N'Ali', N'ali@', N'�gB��\v��U�g�6#ȳ��E��x��F�')
INSERT [dbo].[Users] ([Id], [Fullname], [Email], [Password]) VALUES (24, N'elcin', N'ps@gmail', N'��SA��^*X�N�^r�٠�C���<h-
:=�')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D10534B801BB1E]    Script Date: 24.05.2021 11:10:10 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[User_to_Roles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[User_to_Roles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
