USE [master]
GO
/****** Object:  Database [GalaxyCoffee]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE DATABASE [GalaxyCoffee]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GalaxyCoffee', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\GalaxyCoffee.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GalaxyCoffee_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\GalaxyCoffee_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GalaxyCoffee] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GalaxyCoffee].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GalaxyCoffee] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET ARITHABORT OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GalaxyCoffee] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GalaxyCoffee] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GalaxyCoffee] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GalaxyCoffee] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GalaxyCoffee] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GalaxyCoffee] SET  MULTI_USER 
GO
ALTER DATABASE [GalaxyCoffee] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GalaxyCoffee] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GalaxyCoffee] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GalaxyCoffee] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GalaxyCoffee] SET DELAYED_DURABILITY = DISABLED 
GO
USE [GalaxyCoffee]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[ShopID] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[WardID] [int] NULL,
	[DetailAddress] [nvarchar](50) NULL,
	[Identity] [nvarchar](11) NULL,
	[BirthDay] [datetime] NULL,
	[Sex] [nvarchar](10) NULL,
	[Description] [nvarchar](100) NULL,
	[CreateAt] [datetime] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CityID] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupTable]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Surcharge] [decimal](19, 4) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GroupTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableID] [int] NOT NULL,
	[PromotionID] [int] NULL,
	[UserID] [int] NOT NULL,
	[CreateAt] [datetime] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Status] [nvarchar](20) NULL,
	[IsDelete] [bit] NULL,
	[Quantity] [smallint] NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ShopID] [int] NOT NULL,
	[Image] [nvarchar](200) NULL,
	[UnitPrice] [decimal](19, 4) NULL,
	[Description] [nvarchar](100) NULL,
	[StartDay] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Discount] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShopID] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[BasePurchase] [int] NULL,
	[Discount] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shop]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[WardID] [int] NOT NULL,
	[DetailAddress] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GroupTableID] [int] NOT NULL,
	[ShopID] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ward]    Script Date: 2018-01-02 11:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [IsDelete]) VALUES (1, N'Admin', NULL, 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [IsDelete]) VALUES (2, N'Customer', NULL, 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [IsDelete]) VALUES (3, N'Manager', NULL, 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [IsDelete]) VALUES (4, N'Chef', NULL, 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [IsDelete]) VALUES (5, N'Cashier', NULL, 0)
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
SET IDENTITY_INSERT [dbo].[AspNetUserRoles] ON 

INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (1, 3, 1, 0, NULL, 0)
INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (2, 4, 2, 1, NULL, 0)
INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (3, 5, 3, 1, NULL, 0)
INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (4, 6, 4, 1, NULL, 0)
INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (5, 7, 4, 2, NULL, 0)
INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (6, 8, 5, 1, NULL, 0)
INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (7, 9, 5, 2, NULL, 0)
INSERT [dbo].[AspNetUserRoles] ([Id], [UserId], [RoleId], [ShopID], [Description], [IsDelete]) VALUES (8, 10, 3, 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[AspNetUserRoles] OFF
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (1, N'abc@gmail.com', 0, N'AJa6rPeepqaLFVNEiDLeJKBLomBk2txghAnJtzXDOmy8s0vbnAyQSgPevYfjQJvGrw==', N'1e51ad80-f52b-4c0d-9d09-c890cfd7497b', NULL, 0, 0, NULL, 1, 0, N'abc@gmail.com', N'abc', 1, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-25 22:10:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (2, N'john@gmail.com', 0, N'AEclxM8bFi1oaDn+MxwMrv9TWfFfkYe/HtTZE2LMla4AudWKGRh0lpyERoTJQakwug==', N'42c66e57-c8ca-46f2-ab15-9ae5f17be26e', NULL, 0, 0, NULL, 1, 0, N'john@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-25 22:11:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (3, N'admin2017@gmail.com', 0, N'AFpbQ8ENLgBO12pfCsMHqmbWY187Sk+3GvO/LRaFDqlFWKYyWb0VJJtacvfzo28G7A==', N'fbd15e3f-c0de-42a6-85cb-eb77a4f85ca9', NULL, 0, 0, NULL, 1, 0, N'admin2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:29:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (4, N'customer2017@gmail.com', 0, N'ACiDOaWxWAReE4cy0ROZWjwpAxHdeQKAGoyS6IanKHsr7WvgHq7OFKfEqy0Uye8biA==', N'43251a0a-5419-4066-8ffd-44bdf82ca9df', NULL, 0, 0, NULL, 1, 0, N'customer2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:29:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (5, N'manager2017@gmail.com', 0, N'AMVHLC3jRxkJjC+5Dh25YxMaUVVb9yQSInXU9xSb8JvzgOTIV0uU/68ygAejnTLxzg==', N'62214ba5-ed43-474e-a6a2-0c1391953a7e', NULL, 0, 0, NULL, 1, 0, N'manager2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:30:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (6, N'cheftanbinh2017@gmail.com', 0, N'ABGhE2SFVEvP1etY1nkzqQmao1l7Jdexxgc2UVhzlcyhlPinzcYYW+dI7e110xOnxw==', N'208889c1-35e3-4c04-bbf0-f8458d3b9ee7', NULL, 0, 0, NULL, 1, 0, N'cheftanbinh2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:49:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (7, N'cheftanphu2017@gmail.com', 0, N'AGve6lBIUp+DqWJTEsN/2wJPlnfBnQyWcw7SwfvemAK5gB7m0HAj2MsXxb4XJ8yN5A==', N'04457998-ba7f-4073-a638-0475081f312c', NULL, 0, 0, NULL, 1, 0, N'cheftanphu2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:49:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (8, N'cashiertanbinh2017@gmail.com', 0, N'ABHTpp+m1JjT1FSkAekfQY3Qq7XFt8B6CS+NwCZ6mYGJp7kOU69Ah0xOKVJC/CEPXw==', N'6dad5863-91b0-4df7-a4f5-8a3fdeb26037', NULL, 0, 0, NULL, 1, 0, N'cashiertanbinh2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:50:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (9, N'cashiertanphu2017@gmail.com', 0, N'ACTiHIeXt7L7FlNWpwJF6N0OdeCIa5ZcBPeo3XfDLXr4OvQOeP4v1vg0NsNrx2NCFg==', N'2f92ef5f-226d-4a99-a7ad-d40661e8c6a9', NULL, 0, 0, NULL, 1, 0, N'cashiertanphu2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:50:00.000' AS DateTime), 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [WardID], [DetailAddress], [Identity], [BirthDay], [Sex], [Description], [CreateAt], [IsDelete]) VALUES (10, N'managertanphu2017@gmail.com', 0, N'AM8tT6nwx/PInMAhaa0q+vbz/3Q1qOjNT4xbouap2z1zvHnDLp7s+OfIaT2nxtb7SQ==', N'ceb73607-1e1e-41e0-a089-0a6526ae03dd', NULL, 0, 0, NULL, 1, 0, N'managertanphu2017@gmail.com', N'John', 2, NULL, NULL, NULL, N'Nam', NULL, CAST(N'2017-07-26 09:52:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (1, N'Hồ Chí Minh', NULL, 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (2, N'Hà Nội', NULL, 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (3, N'Bắc Giang', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (4, N'Bắc Kạn', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (5, N'Bạc Liêu', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (6, N'Bắc Ninh', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (7, N'Bến Tre', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (8, N'Bình Định', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (9, N'Bình Dương', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (10, N'Bình Phước', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (11, N'Bình Thuận', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (12, N'Cà Mau', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (13, N'Cao Bằng', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (14, N'Đắk Lắk', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (15, N'Đắk Nông', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (16, N'Điện Biên', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (17, N'Đồng Nai', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (18, N'Đồng Tháp', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (19, N'Gia Lai', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (20, N'Hà Giang', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (21, N'Hà Nam', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (22, N'Hà Tĩnh', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (23, N'Hải Dương', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (24, N'Hậu Giang', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (25, N'Hòa Bình', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (26, N'Hưng Yên', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (27, N'Khánh Hòa', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (28, N'Kiên Giang', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (29, N'Kon Tum', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (30, N'Lai Châu', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (31, N'Lâm Đồng', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (32, N'Lạng Sơn', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (33, N'Lào Cai', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (34, N'Long An', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (35, N'Nam Định', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (36, N'Nghệ An', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (37, N'Ninh Bình', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (38, N'Ninh Thuận', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (39, N'Phú Thọ', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (40, N'Quảng Bình', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (41, N'Quảng Nam', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (42, N'Quảng Ngãi', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (43, N'Quảng Ninh', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (44, N'Quảng Trị', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (45, N'Sóc Trăng', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (46, N'Sơn La', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (47, N'Tây Ninh', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (48, N'Thái Bình', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (49, N'Thái Nguyên', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (50, N'Thanh Hóa', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (51, N'Thừa Thiên Huế', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (52, N'Tiền Giang', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (53, N'Trà Vinh', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (54, N'Tuyên Quang', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (55, N'Vĩnh Long', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (56, N'Vĩnh Phúc', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (57, N'Yên Bái', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (58, N'Phú Yên', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (59, N'Cần Thơ', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (60, N'Đà Nẵng', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (61, N'Hải Phòng', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (62, N'An Giang', N'', 0)
INSERT [dbo].[City] ([ID], [Name], [Description], [IsDelete]) VALUES (63, N'Bà Rịa - Vũng Tàu', N'', 0)
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([ID], [Name], [CityID], [Description], [IsDelete]) VALUES (1, N'Quận Thủ Đức', 1, NULL, 0)
INSERT [dbo].[District] ([ID], [Name], [CityID], [Description], [IsDelete]) VALUES (2, N'Quận 1', 1, NULL, 0)
INSERT [dbo].[District] ([ID], [Name], [CityID], [Description], [IsDelete]) VALUES (3, N'Quận 12', 1, NULL, 0)
INSERT [dbo].[District] ([ID], [Name], [CityID], [Description], [IsDelete]) VALUES (4, N'Quận Ba Đình', 2, NULL, 0)
INSERT [dbo].[District] ([ID], [Name], [CityID], [Description], [IsDelete]) VALUES (5, N'Quận Hoàn Kiếm', 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[GroupTable] ON 

INSERT [dbo].[GroupTable] ([ID], [Name], [Description], [Surcharge], [IsDelete]) VALUES (1, N'VIP', NULL, CAST(10.0000 AS Decimal(19, 4)), 0)
INSERT [dbo].[GroupTable] ([ID], [Name], [Description], [Surcharge], [IsDelete]) VALUES (2, N'NOMAL', NULL, CAST(0.0000 AS Decimal(19, 4)), 0)
SET IDENTITY_INSERT [dbo].[GroupTable] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (1, 1, NULL, 1, CAST(N'2017-01-01 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (2, 2, NULL, 1, CAST(N'2017-01-01 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (3, 2, NULL, 1, CAST(N'2017-01-01 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (4, 2, NULL, 1, CAST(N'2017-01-01 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (5, 2, NULL, 1, CAST(N'2017-01-01 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (6, 2, NULL, 1, CAST(N'2017-01-02 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (7, 1, 2, 1, CAST(N'2017-01-02 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (8, 1, 2, 1, CAST(N'2017-01-02 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (9, 1, 2, 1, CAST(N'2017-01-02 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (10, 1, 2, 1, CAST(N'2017-01-03 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (11, 1, 2, 1, CAST(N'2017-01-03 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (12, 1, 2, 1, CAST(N'2017-01-03 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (13, 1, 2, 1, CAST(N'2017-01-03 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (14, 1, 2, 1, CAST(N'2017-01-04 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (15, 1, 2, 1, CAST(N'2017-01-04 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (16, 1, 2, 1, CAST(N'2017-01-04 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (17, 2, 2, 1, CAST(N'2017-01-04 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (18, 1, 1, 1, CAST(N'2017-01-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (19, 2, 1, 1, CAST(N'2017-01-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (20, 1, 1, 1, CAST(N'2017-01-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (21, 1, 1, 1, CAST(N'2017-01-06 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (22, 1, 1, 1, CAST(N'2017-01-06 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (23, 1, 1, 1, CAST(N'2017-01-07 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (24, 1, 1, 1, CAST(N'2017-01-07 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (25, 1, 1, 1, CAST(N'2017-01-07 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (26, 1, 1, 1, CAST(N'2017-01-08 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (27, 1, 1, 1, CAST(N'2017-01-09 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Order] ([ID], [TableID], [PromotionID], [UserID], [CreateAt], [IsDelete]) VALUES (28, 1, 1, 1, CAST(N'2017-01-10 00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (1, 1, 1, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (2, 2, 1, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (3, 3, 2, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (4, 4, 2, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (5, 1, 3, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (6, 2, 3, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (7, 5, 3, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (8, 5, 3, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (9, 5, 4, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (10, 4, 4, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (11, 4, 4, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (12, 4, 5, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (13, 4, 5, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (14, 5, 5, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (15, 5, 6, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (16, 5, 6, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (17, 1, 7, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (18, 1, 7, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (19, 1, 7, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (20, 1, 8, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (21, 3, 8, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (22, 3, 9, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (23, 3, 9, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (24, 5, 10, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (26, 4, 10, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (27, 4, 10, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (28, 4, 11, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (29, 4, 11, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (30, 4, 12, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (31, 4, 13, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (32, 3, 14, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (33, 2, 14, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (34, 1, 14, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (35, 1, 15, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (36, 2, 15, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (37, 3, 15, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (38, 3, 15, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (39, 1, 16, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (40, 2, 16, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (41, 2, 16, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (42, 1, 17, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (43, 2, 17, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (44, 2, 18, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (45, 3, 19, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (46, 4, 20, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (47, 1, 20, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (48, 5, 21, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (49, 2, 21, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (50, 3, 22, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (51, 4, 22, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (52, 1, 23, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (53, 2, 23, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (54, 3, 24, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (55, 1, 24, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (56, 5, 25, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (57, 1, 26, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (58, 1, 26, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (59, 1, 27, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (60, 2, 27, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (61, 3, 28, N'3', 0, 1)
INSERT [dbo].[OrderProduct] ([ID], [ProductID], [OrderID], [Status], [IsDelete], [Quantity]) VALUES (62, 3, 28, N'3', 0, 1)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [ProductCategoryID], [ShopID], [Image], [UnitPrice], [Description], [StartDay], [EndDate], [Discount], [IsDelete]) VALUES (1, N'Cà phê đen trung nguyên', 1, 1, NULL, CAST(50000.0000 AS Decimal(19, 4)), NULL, CAST(N'2017-03-10 00:00:00.000' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Product] ([ID], [Name], [ProductCategoryID], [ShopID], [Image], [UnitPrice], [Description], [StartDay], [EndDate], [Discount], [IsDelete]) VALUES (2, N'Cà phê sữa ', 1, 1, NULL, CAST(60000.0000 AS Decimal(19, 4)), NULL, CAST(N'2017-03-10 00:00:00.000' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Product] ([ID], [Name], [ProductCategoryID], [ShopID], [Image], [UnitPrice], [Description], [StartDay], [EndDate], [Discount], [IsDelete]) VALUES (3, N'Sinh tố bơ', 2, 1, NULL, CAST(15000.0000 AS Decimal(19, 4)), NULL, CAST(N'2017-03-10 00:00:00.000' AS DateTime), NULL, 10, 0)
INSERT [dbo].[Product] ([ID], [Name], [ProductCategoryID], [ShopID], [Image], [UnitPrice], [Description], [StartDay], [EndDate], [Discount], [IsDelete]) VALUES (4, N'Sinh tố mẵng cầu', 2, 1, NULL, CAST(15000.0000 AS Decimal(19, 4)), NULL, CAST(N'2017-03-10 00:00:00.000' AS DateTime), NULL, 0, 0)
INSERT [dbo].[Product] ([ID], [Name], [ProductCategoryID], [ShopID], [Image], [UnitPrice], [Description], [StartDay], [EndDate], [Discount], [IsDelete]) VALUES (5, N'Sinh tố sabuche', 2, 1, NULL, CAST(15000.0000 AS Decimal(19, 4)), NULL, CAST(N'2017-03-10 00:00:00.000' AS DateTime), NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [Description], [IsDelete]) VALUES (1, N'Cà phê', NULL, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [Description], [IsDelete]) VALUES (2, N'Sinh tố', NULL, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [Description], [IsDelete]) VALUES (3, N'Ăn nhanh', NULL, 0)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([ID], [Name], [ShopID], [StartDate], [EndDate], [BasePurchase], [Discount], [Description], [IsDelete]) VALUES (1, N'Khuyến mãi mùa hè', 1, CAST(N'2017-03-10 00:00:00.000' AS DateTime), CAST(N'2017-03-15 00:00:00.000' AS DateTime), 200000, 5, NULL, 0)
INSERT [dbo].[Promotion] ([ID], [Name], [ShopID], [StartDate], [EndDate], [BasePurchase], [Discount], [Description], [IsDelete]) VALUES (2, N'Đông đến', 2, CAST(N'2017-03-10 00:00:00.000' AS DateTime), CAST(N'2017-03-20 00:00:00.000' AS DateTime), 100000, 10, NULL, 0)
SET IDENTITY_INSERT [dbo].[Promotion] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([ID], [Name], [WardID], [DetailAddress], [Description], [IsDelete]) VALUES (0, N'Admin', 1, N'', NULL, 0)
INSERT [dbo].[Shop] ([ID], [Name], [WardID], [DetailAddress], [Description], [IsDelete]) VALUES (1, N'Tân Bình', 1, N'Ngõ số 5', NULL, 0)
INSERT [dbo].[Shop] ([ID], [Name], [WardID], [DetailAddress], [Description], [IsDelete]) VALUES (2, N'Tân Phú', 5, N'Ngõ số 10, đường tân phú', NULL, 0)
SET IDENTITY_INSERT [dbo].[Shop] OFF
SET IDENTITY_INSERT [dbo].[Table] ON 

INSERT [dbo].[Table] ([ID], [Name], [GroupTableID], [ShopID], [Description], [IsDelete]) VALUES (1, N'Bàn số 1', 1, 1, NULL, 0)
INSERT [dbo].[Table] ([ID], [Name], [GroupTableID], [ShopID], [Description], [IsDelete]) VALUES (2, N'Bàn số 2', 2, 1, NULL, 0)
INSERT [dbo].[Table] ([ID], [Name], [GroupTableID], [ShopID], [Description], [IsDelete]) VALUES (3, N'Bàn số 1', 1, 2, NULL, 0)
INSERT [dbo].[Table] ([ID], [Name], [GroupTableID], [ShopID], [Description], [IsDelete]) VALUES (4, N'Bàn số 2', 2, 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[Table] OFF
SET IDENTITY_INSERT [dbo].[Ward] ON 

INSERT [dbo].[Ward] ([ID], [DistrictID], [Name], [Description], [IsDelete]) VALUES (1, 2, N'Phường Tân Định', NULL, 0)
INSERT [dbo].[Ward] ([ID], [DistrictID], [Name], [Description], [IsDelete]) VALUES (2, 2, N'Phường Đa Kao', NULL, 0)
INSERT [dbo].[Ward] ([ID], [DistrictID], [Name], [Description], [IsDelete]) VALUES (3, 1, N'Phường Linh Xuân', NULL, 0)
INSERT [dbo].[Ward] ([ID], [DistrictID], [Name], [Description], [IsDelete]) VALUES (4, 4, N'Phường Phúc Xá', NULL, 0)
INSERT [dbo].[Ward] ([ID], [DistrictID], [Name], [Description], [IsDelete]) VALUES (5, 4, N'Phường Trúc Bạch', NULL, 0)
SET IDENTITY_INSERT [dbo].[Ward] OFF
/****** Object:  Index [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_ShopUser_Shop]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_ShopUser_Shop] ON [dbo].[AspNetUserRoles]
(
	[ShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_User_TownShip]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_User_TownShip] ON [dbo].[AspNetUsers]
(
	[WardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_District_City]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_District_City] ON [dbo].[District]
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Order_Promotion]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Order_Promotion] ON [dbo].[Order]
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Order_Table]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Order_Table] ON [dbo].[Order]
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Order_User]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Order_User] ON [dbo].[Order]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_OrderProduct_Order]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_OrderProduct_Order] ON [dbo].[OrderProduct]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_OrderProduct_Product]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_OrderProduct_Product] ON [dbo].[OrderProduct]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Product_ProductCategory]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Product_ProductCategory] ON [dbo].[Product]
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Product_Shop]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Product_Shop] ON [dbo].[Product]
(
	[ShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Promotion_Shop]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Promotion_Shop] ON [dbo].[Promotion]
(
	[ShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Shop_TownShip]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Shop_TownShip] ON [dbo].[Shop]
(
	[WardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Table_GroupTable]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Table_GroupTable] ON [dbo].[Table]
(
	[GroupTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Table_Shop]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Table_Shop] ON [dbo].[Table]
(
	[ShopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_TownShip_District]    Script Date: 2018-01-02 11:28:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_TownShip_District] ON [dbo].[Ward]
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_ShopUser_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ID])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_ShopUser_Shop]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_User_TownShip] FOREIGN KEY([WardID])
REFERENCES [dbo].[Ward] ([ID])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_User_TownShip]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_City]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Promotion] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotion] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Promotion]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Table] FOREIGN KEY([TableID])
REFERENCES [dbo].[Table] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Table]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Shop]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ID])
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Shop]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_TownShip] FOREIGN KEY([WardID])
REFERENCES [dbo].[Ward] ([ID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_TownShip]
GO
ALTER TABLE [dbo].[Table]  WITH CHECK ADD  CONSTRAINT [FK_Table_GroupTable] FOREIGN KEY([GroupTableID])
REFERENCES [dbo].[GroupTable] ([ID])
GO
ALTER TABLE [dbo].[Table] CHECK CONSTRAINT [FK_Table_GroupTable]
GO
ALTER TABLE [dbo].[Table]  WITH CHECK ADD  CONSTRAINT [FK_Table_Shop] FOREIGN KEY([ShopID])
REFERENCES [dbo].[Shop] ([ID])
GO
ALTER TABLE [dbo].[Table] CHECK CONSTRAINT [FK_Table_Shop]
GO
ALTER TABLE [dbo].[Ward]  WITH CHECK ADD  CONSTRAINT [FK_TownShip_District] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([ID])
GO
ALTER TABLE [dbo].[Ward] CHECK CONSTRAINT [FK_TownShip_District]
GO
USE [master]
GO
ALTER DATABASE [GalaxyCoffee] SET  READ_WRITE 
GO
