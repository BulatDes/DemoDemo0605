USE [DemoExamen0605]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 06.05.2025 11:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[PartnerProductID] [int] IDENTITY(1,1) NOT NULL,
	[Production] [nvarchar](200) NULL,
	[NamePartner] [nvarchar](200) NULL,
	[QuantityProduction] [int] NULL,
	[DateSale] [nvarchar](200) NULL,
	[ProductID] [int] NULL,
	[PartnerID] [int] NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[PartnerProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 06.05.2025 11:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[PartnerID] [int] IDENTITY(1,1) NOT NULL,
	[NamePartner] [nvarchar](200) NULL,
	[Director] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Phone] [nvarchar](200) NULL,
	[LawAdress] [nvarchar](200) NULL,
	[Rating] [int] NULL,
	[TypePartnerID] [int] NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 06.05.2025 11:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[TypePartnerID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[TypePartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06.05.2025 11:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduction] [nvarchar](200) NULL,
	[NameProduction] [nvarchar](200) NULL,
	[Articul] [nvarchar](200) NULL,
	[MinPriceForPartner] [money] NULL,
	[ProductTypeID] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 06.05.2025 11:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduction] [nvarchar](100) NULL,
	[Coefficient] [nvarchar](100) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PartnerProducts] ON 

INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (1, N'Паркетная доска Ясень темный однополосная 14 мм', N'База Строитель', 15500, N'23.03.2023', 1, 1)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'База Строитель', 12350, N'18.12.2023', 1, 1)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'База Строитель', 37400, N'07.06.2024', 2, 1)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (4, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'Паркет 29', 35000, N'02.12.2022', 2, 2)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'Паркет 29', 1250, N'17.05.2023', 2, 2)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (6, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'Паркет 29', 1000, N'07.06.2024', 3, 2)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (7, N'Паркетная доска Ясень темный однополосная 14 мм', N'Паркет 29', 7550, N'01.07.2024', 3, 2)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (8, N'Паркетная доска Ясень темный однополосная 14 мм', N'Стройсервис', 7250, N'22.01.2023', 3, 3)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (9, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'Стройсервис', 2500, N'05.07.2024', 4, 3)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (10, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'Ремонт и отделка', 59050, N'20.03.2023', 4, 4)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (11, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'Ремонт и отделка', 37200, N'12.03.2024', 4, 4)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (12, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'Ремонт и отделка', 4500, N'14.05.2024', 5, 4)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (13, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'МонтажПро', 50000, N'19.09.2023', 5, 5)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (14, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'МонтажПро', 670000, N'10.11.2023', 5, 5)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (15, N'Паркетная доска Ясень темный однополосная 14 мм', N'МонтажПро', 35000, N'15.04.2024', 5, 5)
INSERT [dbo].[PartnerProducts] ([PartnerProductID], [Production], [NamePartner], [QuantityProduction], [DateSale], [ProductID], [PartnerID]) VALUES (16, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'МонтажПро', 25000, N'12.06.2024', 5, 5)
SET IDENTITY_INSERT [dbo].[PartnerProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([PartnerID], [NamePartner], [Director], [Email], [Phone], [LawAdress], [Rating], [TypePartnerID]) VALUES (1, N'База Строитель', N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'493 123 45 67', N'652050, Кемеровская область, город Юрга, ул. Лесная, 15', 7, 1)
INSERT [dbo].[Partners] ([PartnerID], [NamePartner], [Director], [Email], [Phone], [LawAdress], [Rating], [TypePartnerID]) VALUES (2, N'Паркет 29', N'Петров Василий Петрович', N'vppetrov@vl.ru', N'987 123 56 78', N'164500, Архангельская область, город Северодвинск, ул. Строителей, 18', 7, 2)
INSERT [dbo].[Partners] ([PartnerID], [NamePartner], [Director], [Email], [Phone], [LawAdress], [Rating], [TypePartnerID]) VALUES (3, N'Стройсервис', N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'812 223 32 00', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', 7, 3)
INSERT [dbo].[Partners] ([PartnerID], [NamePartner], [Director], [Email], [Phone], [LawAdress], [Rating], [TypePartnerID]) VALUES (4, N'Ремонт и отделка', N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', N'143960, Московская область, город Реутов, ул. Свободы, 51', 5, 4)
INSERT [dbo].[Partners] ([PartnerID], [NamePartner], [Director], [Email], [Phone], [LawAdress], [Rating], [TypePartnerID]) VALUES (5, N'МонтажПро', N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'912 888 33 33', N'309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122', 10, 1)
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([TypePartnerID], [TypeName]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([TypePartnerID], [TypeName]) VALUES (2, N'ООО')
INSERT [dbo].[PartnerType] ([TypePartnerID], [TypeName]) VALUES (3, N'ПАО')
INSERT [dbo].[PartnerType] ([TypePartnerID], [TypeName]) VALUES (4, N'ОАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [TypeProduction], [NameProduction], [Articul], [MinPriceForPartner], [ProductTypeID]) VALUES (1, N'Паркетная доска', N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', 445690.0000, NULL)
INSERT [dbo].[Products] ([ProductID], [TypeProduction], [NameProduction], [Articul], [MinPriceForPartner], [ProductTypeID]) VALUES (2, N'Паркетная доска', N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', 733099.0000, NULL)
INSERT [dbo].[Products] ([ProductID], [TypeProduction], [NameProduction], [Articul], [MinPriceForPartner], [ProductTypeID]) VALUES (3, N'Ламинат', N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', 179933.0000, NULL)
INSERT [dbo].[Products] ([ProductID], [TypeProduction], [NameProduction], [Articul], [MinPriceForPartner], [ProductTypeID]) VALUES (4, N'Ламинат', N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', 389041.0000, NULL)
INSERT [dbo].[Products] ([ProductID], [TypeProduction], [NameProduction], [Articul], [MinPriceForPartner], [ProductTypeID]) VALUES (5, N'Пробковое покрытие', N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', 545059.0000, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ProductTypeID], [TypeProduction], [Coefficient]) VALUES (1, N'Ламинат', N'2,35')
INSERT [dbo].[ProductType] ([ProductTypeID], [TypeProduction], [Coefficient]) VALUES (2, N'Массивная доска', N'5,15')
INSERT [dbo].[ProductType] ([ProductTypeID], [TypeProduction], [Coefficient]) VALUES (3, N'Паркетная доска', N'4,34')
INSERT [dbo].[ProductType] ([ProductTypeID], [TypeProduction], [Coefficient]) VALUES (4, N'Пробковое покрытие', N'1,5')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Partners] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partners] ([PartnerID])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Partners]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Products]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerType] FOREIGN KEY([TypePartnerID])
REFERENCES [dbo].[PartnerType] ([TypePartnerID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
