USE [master]
GO
/****** Object:  Database [MilkWebUser]    Script Date: 03/05/2024 12:03:38 CH ******/
CREATE DATABASE [MilkWebUser]
GO
ALTER DATABASE [MilkWebUser] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MilkWebUser].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MilkWebUser] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MilkWebUser] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MilkWebUser] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MilkWebUser] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MilkWebUser] SET ARITHABORT OFF 
GO
ALTER DATABASE [MilkWebUser] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MilkWebUser] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MilkWebUser] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MilkWebUser] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MilkWebUser] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MilkWebUser] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MilkWebUser] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MilkWebUser] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MilkWebUser] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MilkWebUser] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MilkWebUser] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MilkWebUser] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MilkWebUser] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MilkWebUser] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MilkWebUser] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MilkWebUser] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MilkWebUser] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MilkWebUser] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MilkWebUser] SET  MULTI_USER 
GO
ALTER DATABASE [MilkWebUser] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MilkWebUser] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MilkWebUser] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MilkWebUser] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MilkWebUser] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MilkWebUser] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MilkWebUser] SET QUERY_STORE = ON
GO
ALTER DATABASE [MilkWebUser] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MilkWebUser]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Phone] [char](12) NULL,
 CONSTRAINT [PK__Customer__3214EC27697361FB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NULL,
	[Staff_ID] [nvarchar](450) NULL,
	[Date] [date] NULL,
	[Address] [nvarchar](200) NULL,
	[Received] [bit] NULL,
	[Completed] [bit] NULL,
	[Canceled] [bit] NULL,
	[Price] [decimal](18, 0) NULL,
	[Product_ID] [int] NULL,
	[P_Num] [int] NULL,
 CONSTRAINT [PK__Orders__3214EC2780ABF106] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/05/2024 12:03:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Price] [decimal](10, 0) NULL,
	[QuantityInStock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231009022417_ShoesMVCUser', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240126153710_InitUser', N'8.0.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0', N'Admin', N'admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Staff', N'staff', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1306d172-71ac-49f8-a512-5f72c8eac43f', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [lastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1306d172-71ac-49f8-a512-5f72c8eac43f', N'Admin', N'1', N'admin@mail', N'ADMIN@MAIL', N'admin@mail', N'ADMIN@MAIL', 0, N'AQAAAAIAAYagAAAAEHReE1xvW90GwZPXSxG8b6O2SE1ANqLqjNXbxBwFyu8cyt/OLwgs+dESYD4zLcHrzA==', N'PUPGQCHHARLBI24QPVQIHSJQHQRT7H47', N'94154bde-2ecc-4a30-9500-3e71f26943b0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [lastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', N'Nguyen', N'Lam', N'pmt2@gmail.com', N'PMT2@GMAIL.COM', N'pmt2@gmail.com', N'PMT2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENSLU7utPHlECVCyAD3dDDwVNg59WjywMKSj4j+QUbgbusR9MeNrgdilYovTi6WeBA==', N'FZ73PO36ZNKFMQB6TLIMB3QNRDC36QFZ', N'a74aa4af-470f-47f1-9586-a0dfbb98b265', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [lastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'380af919-c6db-4b03-bcab-4b84415866c3', N'Tuan', N'Pham', N'pmt@gmail.com', N'PMT@GMAIL.COM', N'pmt@gmail.com', N'PMT@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDDkLBtT5kju0fFLLb7CWRUGIdINQgdvxc/WZwDCaiFM3+Uvlbjs9lCJyb1N53M5fw==', N'MJNWWJOSLJTB4VRTBOTH4L2HQIA76W7J', N'7e8646ef-6555-44e3-9fcc-ed4a4dd79ac4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [lastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e854e6e6-d8fd-4910-8b50-c412c2d0b498', N'Hoang', N'Van', N'pmt3@gmail.com', N'PMT3@GMAIL.COM', N'pmt3@gmail.com', N'PMT3@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMyFaDh+zw2eeUu7STbT7VaVHXZi6s7Bu17KEpUGIB/dYVCZI6OTUn8+ayka0+vnmg==', N'NADYQZP7KQAQXKA4ELRSJVYJVFBV3DX3', N'00af7207-f0c3-4f46-afda-b7736cfaef19', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [firstName], [lastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fae422f1-08b2-4725-8963-3a4f2443deb6', N'Tuan', N'Pham', N'pmt1@gmail.com', N'PMT1@GMAIL.COM', N'pmt1@gmail.com', N'PMT1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEP9V2qfu1IGwB4C0dH8p8JzQbunajC1QiCugFeXTW5nCYo8mubi69jBEgANfuxxLHA==', N'44HHI676U2MJ3VANKH5QIDNC5BYXKNST', N'302a8a68-b381-4426-a106-bc4df3b64a3d', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', N'[AspNetUserStore]', N'AuthenticatorKey', N'CDCXEDSMDLGUWVCEV42CQ7ZNIGG67GVL')
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Name], [Phone]) VALUES (1, N'Lương Thế Vinh', N'0123456789  ')
INSERT [dbo].[Customer] ([ID], [Name], [Phone]) VALUES (2, N'Phạm Nhật Vượng', N'0356789145  ')
INSERT [dbo].[Customer] ([ID], [Name], [Phone]) VALUES (3, N'Phạm Hải Đồng', N'0868956487  ')
INSERT [dbo].[Customer] ([ID], [Name], [Phone]) VALUES (4, N'Trần Văn Hải', N'0255498354  ')
INSERT [dbo].[Customer] ([ID], [Name], [Phone]) VALUES (5, N'Nguyễn Hải Nam', N'0112255887  ')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (1, 1, N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', CAST(N'2022-01-12' AS Date), N'25 Phố Huế, Hai Bà Trưng, Hà Nội
', 1, 1, 0, CAST(200000 AS Decimal(18, 0)), 1, 2)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (2, 2, N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', CAST(N'2022-11-12' AS Date), N'10A Phan Chu Trinh, Hoàn Kiếm, Hà Nội', 1, 0, 1, CAST(100000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (3, 3, N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', CAST(N'2022-11-15' AS Date), N'Số 8 Đại Cồ Việt, Hai Bà Trưng, Hà Nội
', 1, 0, 0, CAST(1525000 AS Decimal(18, 0)), 5, 3)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (4, 4, N'380af919-c6db-4b03-bcab-4b84415866c3', CAST(N'2022-11-15' AS Date), N'72 Nguyễn Chí Thanh, Đống Đa, Hà Nội', 1, 0, 0, CAST(100000 AS Decimal(18, 0)), 4, 5)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (8, 5, N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', CAST(N'2022-11-15' AS Date), N'15 Trần Phú, Ba Đình, Hà Nội
', 1, 0, 0, CAST(250010 AS Decimal(18, 0)), 1, 4)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (9, 5, N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', CAST(N'2022-11-15' AS Date), N'50 Lê Văn Hưu, Hai Bà Trưng, Hà Nội', 1, 1, 0, CAST(50000 AS Decimal(18, 0)), 3, 1)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (10, 4, N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', CAST(N'2022-11-15' AS Date), N'18 Phan Đình Phùng, Ba Đình, Hà Nội', 1, 0, 1, CAST(524000 AS Decimal(18, 0)), 3, 10)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (12, 5, N'1dea0818-4fb3-4cb7-9fcf-cb2d2293db5a', CAST(N'2022-11-15' AS Date), N'37 Phố Huế, Hai Bà Trưng, Hà Nội', 1, 0, 0, CAST(201000 AS Decimal(18, 0)), 4, 2)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (13, 4, NULL, CAST(N'2022-11-15' AS Date), N'63 Lý Thường Kiệt, Hoàn Kiếm, Hà Nội
', 0, 0, 0, CAST(21000 AS Decimal(18, 0)), 2, 9)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (14, 2, NULL, CAST(N'2022-11-15' AS Date), N'99 Nguyễn Trãi, Thanh Xuân, Hà Nội
', 0, 0, 0, CAST(150000 AS Decimal(18, 0)), 5, 5)
INSERT [dbo].[Orders] ([ID], [Customer_ID], [Staff_ID], [Date], [Address], [Received], [Completed], [Canceled], [Price], [Product_ID], [P_Num]) VALUES (15, 1, NULL, CAST(N'2022-11-15' AS Date), N'Số 8 Đại Cồ Việt, Hai Bà Trưng, Hà Nội
', 0, 0, 0, CAST(10000 AS Decimal(18, 0)), 1, 15)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [QuantityInStock]) VALUES (1, N'Sữa tươi Vinamilk', N'Sữa tươi nguyên chất Vinamilk 180ml', CAST(15000 AS Decimal(10, 0)), 100)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [QuantityInStock]) VALUES (2, N'Sữa bột Ensure', N'Sữa bột dinh dưỡng Ensure 400g', CAST(250000 AS Decimal(10, 0)), 50)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [QuantityInStock]) VALUES (3, N'Sữa chua Yomost', N'Sữa chua probiotic Yomost 150g', CAST(12000 AS Decimal(10, 0)), 80)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [QuantityInStock]) VALUES (4, N'Sữa đậu nành Vinasoy', N'Sữa đậu nành hương vani Vinasoy 1L', CAST(30000 AS Decimal(10, 0)), 60)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [QuantityInStock]) VALUES (5, N'Sữa bò Organic', N'Sữa bò hữu cơ không tăng trưởng hormone 1L', CAST(45000 AS Decimal(10, 0)), 30)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 03/05/2024 12:03:39 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 03/05/2024 12:03:39 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 03/05/2024 12:03:39 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 03/05/2024 12:03:39 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 03/05/2024 12:03:39 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 03/05/2024 12:03:39 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 03/05/2024 12:03:39 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Customer__787EE5A0] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Customer__787EE5A0]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Staff_ID__03F0984C] FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Staff_ID__03F0984C]
GO
USE [master]
GO
ALTER DATABASE [MilkWebUser] SET  READ_WRITE 
GO
