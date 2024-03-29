USE [master]
GO
/****** Object:  Database [CRMprojectDB]    Script Date: 27.02.2024 14:30:34 ******/
CREATE DATABASE [CRMprojectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CRMprojectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CRMprojectDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CRMprojectDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CRMprojectDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CRMprojectDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CRMprojectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CRMprojectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CRMprojectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CRMprojectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRMprojectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRMprojectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRMprojectDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CRMprojectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRMprojectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRMprojectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRMprojectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRMprojectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRMprojectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRMprojectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRMprojectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRMprojectDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CRMprojectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRMprojectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRMprojectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRMprojectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRMprojectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRMprojectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CRMprojectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRMprojectDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CRMprojectDB] SET  MULTI_USER 
GO
ALTER DATABASE [CRMprojectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRMprojectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CRMprojectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CRMprojectDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CRMprojectDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CRMprojectDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CRMprojectDB', N'ON'
GO
ALTER DATABASE [CRMprojectDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [CRMprojectDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CRMprojectDB]
GO
/****** Object:  Table [dbo].[CommunicationHistory]    Script Date: 27.02.2024 14:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommunicationHistory](
	[CommID] [int] IDENTITY(1,1) NOT NULL,
	[CommType] [varchar](50) NULL,
	[CommDate] [varchar](50) NULL,
	[CommSubject] [varchar](50) NULL,
	[CommContent] [varchar](50) NULL,
	[CommStatus] [varchar](50) NULL,
	[CommCustomerID] [int] NULL,
 CONSTRAINT [PK_CommunicationHistory] PRIMARY KEY CLUSTERED 
(
	[CommID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 27.02.2024 14:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](50) NULL,
	[customerSurname] [varchar](50) NULL,
	[customerMail] [varchar](50) NULL,
	[customerPhone] [varchar](50) NULL,
	[customerAddress] [varchar](50) NULL,
	[customerCity] [varchar](50) NULL,
	[customerCountry] [varchar](50) NULL,
	[customerPostalCode] [varchar](50) NULL,
	[customerCreationDate] [datetime] NULL,
	[customerUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 27.02.2024 14:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](50) NULL,
	[productDescription] [varchar](50) NULL,
	[productCategory] [varchar](50) NULL,
	[productPrice] [varchar](50) NULL,
	[productStockQuantity] [varchar](50) NULL,
	[productCreationDate] [datetime] NULL,
	[productUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 27.02.2024 14:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[saleID] [int] IDENTITY(1,1) NOT NULL,
	[saleDate] [datetime] NULL,
	[saleQuantity] [varchar](50) NULL,
	[saleUnitPrice] [varchar](50) NULL,
	[saleDiscountRate] [varchar](50) NULL,
	[saleCustomerID] [int] NULL,
	[saleProductID] [int] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[saleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 27.02.2024 14:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[taskID] [int] IDENTITY(1,1) NOT NULL,
	[taskName] [varchar](50) NULL,
	[taskDescription] [varchar](50) NULL,
	[taskStartDate] [datetime] NULL,
	[taskEndDate] [datetime] NULL,
	[taskStatus] [varchar](50) NULL,
	[taskUserID] [int] NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[taskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.02.2024 14:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userUsername] [varchar](50) NULL,
	[userPassword] [varchar](50) NULL,
	[userName] [varchar](50) NULL,
	[userSurname] [varchar](50) NULL,
	[userMail] [varchar](50) NULL,
	[userRole] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CommunicationHistory] ON 

INSERT [dbo].[CommunicationHistory] ([CommID], [CommType], [CommDate], [CommSubject], [CommContent], [CommStatus], [CommCustomerID]) VALUES (2, N'Message', N'12-03-2023', N'Refund', N'Product Return', N'Completed', 1)
INSERT [dbo].[CommunicationHistory] ([CommID], [CommType], [CommDate], [CommSubject], [CommContent], [CommStatus], [CommCustomerID]) VALUES (3, N'Phone', N'10-01-2024', N'Refund', N'Product Defect', N'Pending', 2)
SET IDENTITY_INSERT [dbo].[CommunicationHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([customerID], [customerName], [customerSurname], [customerMail], [customerPhone], [customerAddress], [customerCity], [customerCountry], [customerPostalCode], [customerCreationDate], [customerUpdateDate]) VALUES (1, N'Berker', N'Erdem', N'berkererdem@gmail.com', N'+905002010', N'Kartal', N'Istanbul', N'Turkey', N'34862', CAST(N'2023-02-10T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Customers] ([customerID], [customerName], [customerSurname], [customerMail], [customerPhone], [customerAddress], [customerCity], [customerCountry], [customerPostalCode], [customerCreationDate], [customerUpdateDate]) VALUES (2, N'Adam', N'Levine', N'adamlevine@gmail.com', N'2045020', N'Beverly Hills', N'Los Angeles', N'USA', N'20911', CAST(N'2020-06-24T00:00:00.000' AS DateTime), CAST(N'2024-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([productID], [productName], [productDescription], [productCategory], [productPrice], [productStockQuantity], [productCreationDate], [productUpdateDate]) VALUES (1, N'Dodge Charger 2008', N'Dodge Charger 2008 Blue', N'Vehicles', N'$58.500,00', N'3', CAST(N'2008-06-15T00:00:00.000' AS DateTime), CAST(N'2017-04-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([productID], [productName], [productDescription], [productCategory], [productPrice], [productStockQuantity], [productCreationDate], [productUpdateDate]) VALUES (2, N'Dodge Viper 
SRT-10', N'Dodge Viper 2014 White Colour, Supersport', N'Vehicles', N'$75.000,00', N'4', CAST(N'2014-12-12T00:00:00.000' AS DateTime), CAST(N'2023-07-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([saleID], [saleDate], [saleQuantity], [saleUnitPrice], [saleDiscountRate], [saleCustomerID], [saleProductID]) VALUES (1, CAST(N'2014-02-10T00:00:00.000' AS DateTime), N'16', N'$50.000,00', N'10', 1, 1)
INSERT [dbo].[Sales] ([saleID], [saleDate], [saleQuantity], [saleUnitPrice], [saleDiscountRate], [saleCustomerID], [saleProductID]) VALUES (2, CAST(N'2023-12-04T00:00:00.000' AS DateTime), N'3', N'$156.000,00', N'5', 2, 2)
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([taskID], [taskName], [taskDescription], [taskStartDate], [taskEndDate], [taskStatus], [taskUserID]) VALUES (3, N'Product Sale', N'Car Selling', CAST(N'2020-04-10T00:00:00.000' AS DateTime), CAST(N'2024-02-26T00:00:00.000' AS DateTime), N'Completed', 1)
INSERT [dbo].[Tasks] ([taskID], [taskName], [taskDescription], [taskStartDate], [taskEndDate], [taskStatus], [taskUserID]) VALUES (4, N'Package Sale', N'About vehicle parts', CAST(N'2017-01-10T00:00:00.000' AS DateTime), CAST(N'2019-04-12T00:00:00.000' AS DateTime), N'Canceled', 2)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userID], [userUsername], [userPassword], [userName], [userSurname], [userMail], [userRole]) VALUES (1, N'admin', N'admin', N'Sirket', N'Yoneticisi', N'admin@gmail.com', N'administrator')
INSERT [dbo].[Users] ([userID], [userUsername], [userPassword], [userName], [userSurname], [userMail], [userRole]) VALUES (2, N'berker', N'123', N'Berker', N'Erdem', N'berkererdem7@gmail.com', N'staff')
INSERT [dbo].[Users] ([userID], [userUsername], [userPassword], [userName], [userSurname], [userMail], [userRole]) VALUES (3, N'adam123', N'321', N'Adam', N'Levine', N'adamlevine@gmail.com', N'employee')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[CommunicationHistory]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationHistory_Customers] FOREIGN KEY([CommCustomerID])
REFERENCES [dbo].[Customers] ([customerID])
GO
ALTER TABLE [dbo].[CommunicationHistory] CHECK CONSTRAINT [FK_CommunicationHistory_Customers]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Customers] FOREIGN KEY([saleCustomerID])
REFERENCES [dbo].[Customers] ([customerID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Customers]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Products] FOREIGN KEY([saleProductID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Products]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users] FOREIGN KEY([taskUserID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users]
GO
USE [master]
GO
ALTER DATABASE [CRMprojectDB] SET  READ_WRITE 
GO
