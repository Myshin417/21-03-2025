Myshin Ditry
мАРТЬЯНОВ дМТРИЙ
/****** Object:  Table [dbo].[Driver12]    Script Date: 21.03.2025 14:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver12](
	[ID_driver] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](15) NOT NULL,
	[name] [nvarchar](15) NOT NULL,
	[Patronymic] [nvarchar](15) NOT NULL,
	[Experience] [int] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[ID_driver] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Routes12]    Script Date: 21.03.2025 14:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routes12](
	[ID_routes] [int] IDENTITY(1,1) NOT NULL,
	[name_routes] [nvarchar](30) NOT NULL,
	[Range] [int] NOT NULL,
	[Number of days on the road] [int] NOT NULL,
	[Payment] [money] NOT NULL,
 CONSTRAINT [PK_Routes] PRIMARY KEY CLUSTERED 
(
	[ID_routes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.03.2025 14:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](30) NOT NULL,
	[Password] [nchar](30) NOT NULL,
	[FIO] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_done12]    Script Date: 21.03.2025 14:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_done12](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_routes] [int] NOT NULL,
	[ID_driver] [int] NOT NULL,
	[Date_of_dispatch] [datetime] NOT NULL,
	[Return_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Work_done12] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Driver12] ON 

INSERT [dbo].[Driver12] ([ID_driver], [surname], [name], [Patronymic], [Experience]) VALUES (1, N'Кодаков', N'Валерий', N'Иванович', 4)
INSERT [dbo].[Driver12] ([ID_driver], [surname], [name], [Patronymic], [Experience]) VALUES (2, N'Раков', N'Егор', N'Соломонович', 2)
INSERT [dbo].[Driver12] ([ID_driver], [surname], [name], [Patronymic], [Experience]) VALUES (3, N'Богов', N'Артем', N'Вадимович', 1)
INSERT [dbo].[Driver12] ([ID_driver], [surname], [name], [Patronymic], [Experience]) VALUES (4, N'Ужов', N'Владимир', N'Николаевич', 3)
INSERT [dbo].[Driver12] ([ID_driver], [surname], [name], [Patronymic], [Experience]) VALUES (5, N'Арабов', N'Адам', N'Ахматович', 8)
INSERT [dbo].[Driver12] ([ID_driver], [surname], [name], [Patronymic], [Experience]) VALUES (7, N'Бурдейный', N'Петр', N'Сергеевич', 30)
SET IDENTITY_INSERT [dbo].[Driver12] OFF
GO
SET IDENTITY_INSERT [dbo].[Routes12] ON 

INSERT [dbo].[Routes12] ([ID_routes], [name_routes], [Range], [Number of days on the road], [Payment]) VALUES (1, N'Нижний новгород-Арзамас', 150, 1, 8370.0000)
INSERT [dbo].[Routes12] ([ID_routes], [name_routes], [Range], [Number of days on the road], [Payment]) VALUES (2, N'Москва-Санк-Петербург', 500, 5, 18500.0000)
INSERT [dbo].[Routes12] ([ID_routes], [name_routes], [Range], [Number of days on the road], [Payment]) VALUES (3, N'Москва-Лукоянов', 400, 4, 13500.0000)
INSERT [dbo].[Routes12] ([ID_routes], [name_routes], [Range], [Number of days on the road], [Payment]) VALUES (4, N'Лукоянов-Арзамас', 90, 1, 5620.0000)
INSERT [dbo].[Routes12] ([ID_routes], [name_routes], [Range], [Number of days on the road], [Payment]) VALUES (5, N'Луоянов-Лопатино', 10, 1, 2300.0000)
INSERT [dbo].[Routes12] ([ID_routes], [name_routes], [Range], [Number of days on the road], [Payment]) VALUES (7, N'Арзамас-Первомайск', 126, 1, 5650.0000)
SET IDENTITY_INSERT [dbo].[Routes12] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Login], [Password], [FIO]) VALUES (1, N'admin                         ', N'123                           ', N'Мышин Дмитрий Николаевич                                                                            ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Work_done12] ON 

INSERT [dbo].[Work_done12] ([ID], [ID_routes], [ID_driver], [Date_of_dispatch], [Return_date]) VALUES (1, 1, 1, CAST(N'2024-05-22T12:00:00.000' AS DateTime), CAST(N'2020-05-26T01:00:00.000' AS DateTime))
INSERT [dbo].[Work_done12] ([ID], [ID_routes], [ID_driver], [Date_of_dispatch], [Return_date]) VALUES (2, 2, 2, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'2024-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Work_done12] ([ID], [ID_routes], [ID_driver], [Date_of_dispatch], [Return_date]) VALUES (3, 3, 3, CAST(N'2024-01-11T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Work_done12] ([ID], [ID_routes], [ID_driver], [Date_of_dispatch], [Return_date]) VALUES (4, 4, 4, CAST(N'2024-04-12T00:00:00.000' AS DateTime), CAST(N'2024-03-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Work_done12] ([ID], [ID_routes], [ID_driver], [Date_of_dispatch], [Return_date]) VALUES (10, 5, 5, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Work_done12] ([ID], [ID_routes], [ID_driver], [Date_of_dispatch], [Return_date]) VALUES (28, 4, 7, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-11-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Work_done12] OFF
GO
ALTER TABLE [dbo].[Work_done12]  WITH CHECK ADD  CONSTRAINT [FK_Work_done_Driver] FOREIGN KEY([ID_driver])
REFERENCES [dbo].[Driver12] ([ID_driver])
GO
ALTER TABLE [dbo].[Work_done12] CHECK CONSTRAINT [FK_Work_done_Driver]
GO
ALTER TABLE [dbo].[Work_done12]  WITH CHECK ADD  CONSTRAINT [FK_Work_done_Routes] FOREIGN KEY([ID_routes])
REFERENCES [dbo].[Routes12] ([ID_routes])
GO
ALTER TABLE [dbo].[Work_done12] CHECK CONSTRAINT [FK_Work_done_Routes]
GO
