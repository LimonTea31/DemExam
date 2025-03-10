USE [22.106-08-DemExam]
GO
/****** Object:  Table [dbo].[Epmloyee]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Epmloyee](
	[idEpmloyee] [int] NOT NULL,
	[NameEmp] [nvarchar](25) NOT NULL,
	[SecondNameEmp] [nvarchar](25) NOT NULL,
	[PatromicEmp] [nvarchar](25) NULL,
	[Passport] [nvarchar](10) NOT NULL,
	[BankRecv] [nvarchar](50) NOT NULL,
	[Family] [int] NOT NULL,
	[idHealch] [int] NOT NULL,
	[idUser] [int] NOT NULL,
 CONSTRAINT [PK_Epmloyee] PRIMARY KEY CLUSTERED 
(
	[idEpmloyee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[idMaterial] [int] IDENTITY(1,1) NOT NULL,
	[idMaterialType] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Discription] [nvarchar](50) NULL,
	[Image] [image] NULL,
	[Price] [money] NOT NULL,
	[CountOnSclad] [int] NOT NULL,
	[MinCount] [int] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[idMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[idMaterialType] [int] IDENTITY(1,1) NOT NULL,
	[MaterialType] [nvarchar](50) NOT NULL,
	[DefectProcent] [float] NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[idMaterialType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[idPartner] [int] IDENTITY(1,1) NOT NULL,
	[idPartnerType] [int] NOT NULL,
	[PartnerName] [nvarchar](50) NOT NULL,
	[DirectorName] [nvarchar](25) NOT NULL,
	[DirectorSecondName] [nvarchar](25) NOT NULL,
	[DirectorPatromic] [nvarchar](25) NULL,
	[EmailPartner] [nvarchar](50) NOT NULL,
	[Nomber] [nvarchar](12) NOT NULL,
	[AdressPartner] [nvarchar](150) NOT NULL,
	[INN] [nvarchar](13) NOT NULL,
	[Raiting] [int] NOT NULL,
	[Logo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[idPartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[idPartnerProduct] [int] IDENTITY(1,1) NOT NULL,
	[idProduct] [int] NOT NULL,
	[idPartner] [int] NOT NULL,
	[CountProduct] [bigint] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProduct] PRIMARY KEY CLUSTERED 
(
	[idPartnerProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[idPartnerType] [int] IDENTITY(1,1) NOT NULL,
	[PartnerType] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[idPartnerType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[idProductType] [int] NOT NULL,
	[ProductName] [nvarchar](80) NOT NULL,
	[Article] [nvarchar](7) NOT NULL,
	[MinPrice] [money] NOT NULL,
	[idMaterial] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[idProductType] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [nvarchar](50) NOT NULL,
	[CoefType] [float] NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[idProductType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalePlace]    Script Date: 28.02.2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalePlace](
	[idSalePlace] [int] IDENTITY(1,1) NOT NULL,
	[AdressSalePlace] [nvarchar](50) NOT NULL,
	[idPartner] [int] NOT NULL,
 CONSTRAINT [PK_SalePlace] PRIMARY KEY CLUSTERED 
(
	[idSalePlace] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([idMaterialType])
REFERENCES [dbo].[MaterialType] ([idMaterialType])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerType] FOREIGN KEY([idPartnerType])
REFERENCES [dbo].[PartnerType] ([idPartnerType])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerType]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Partner] FOREIGN KEY([idPartner])
REFERENCES [dbo].[Partner] ([idPartner])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Partner]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Products] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Products] ([idProduct])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Material] FOREIGN KEY([idMaterial])
REFERENCES [dbo].[Material] ([idMaterial])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Material]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([idProductType])
REFERENCES [dbo].[ProductType] ([idProductType])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
ALTER TABLE [dbo].[SalePlace]  WITH CHECK ADD  CONSTRAINT [FK_SalePlace_Partner] FOREIGN KEY([idPartner])
REFERENCES [dbo].[Partner] ([idPartner])
GO
ALTER TABLE [dbo].[SalePlace] CHECK CONSTRAINT [FK_SalePlace_Partner]
GO
