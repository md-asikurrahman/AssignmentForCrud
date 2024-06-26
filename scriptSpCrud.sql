USE [master]
GO
/****** Object:  Database [CrudWithSp]    Script Date: 6/3/2024 12:56:58 PM ******/
CREATE DATABASE [CrudWithSp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrudWithSp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.JKLIFESTYLE\MSSQL\DATA\CrudWithSp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CrudWithSp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.JKLIFESTYLE\MSSQL\DATA\CrudWithSp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CrudWithSp] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrudWithSp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrudWithSp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrudWithSp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrudWithSp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrudWithSp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrudWithSp] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrudWithSp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrudWithSp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrudWithSp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrudWithSp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrudWithSp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrudWithSp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrudWithSp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrudWithSp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrudWithSp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrudWithSp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CrudWithSp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrudWithSp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrudWithSp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrudWithSp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrudWithSp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrudWithSp] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CrudWithSp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrudWithSp] SET RECOVERY FULL 
GO
ALTER DATABASE [CrudWithSp] SET  MULTI_USER 
GO
ALTER DATABASE [CrudWithSp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrudWithSp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrudWithSp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrudWithSp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CrudWithSp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CrudWithSp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CrudWithSp', N'ON'
GO
ALTER DATABASE [CrudWithSp] SET QUERY_STORE = ON
GO
ALTER DATABASE [CrudWithSp] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CrudWithSp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/3/2024 12:56:59 PM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 6/3/2024 12:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[MobileNo] [nvarchar](max) NOT NULL,
	[NidNo] [nvarchar](max) NOT NULL,
	[Dob] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240602063159_init', N'8.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240602075553_PropAdd', N'8.0.6')
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [MobileNo], [NidNo], [Dob], [CreatedDate], [UpdatedDate], [IsActive]) VALUES (2, N'Ashik', N'01911894097', N'123456789', CAST(N'2024-06-02T15:30:00.0000000' AS DateTime2), CAST(N'2024-06-02T15:30:00.0000000' AS DateTime2), CAST(N'2024-06-02T16:48:03.1900000' AS DateTime2), 0)
INSERT [dbo].[Customers] ([Id], [Name], [MobileNo], [NidNo], [Dob], [CreatedDate], [UpdatedDate], [IsActive]) VALUES (3, N'Ahnaf b', N'1911894098', N'123456780', CAST(N'2024-06-02T15:56:00.0000000' AS DateTime2), CAST(N'2024-06-02T15:56:32.0000000' AS DateTime2), CAST(N'2024-06-02T17:42:16.2200000' AS DateTime2), 1)
INSERT [dbo].[Customers] ([Id], [Name], [MobileNo], [NidNo], [Dob], [CreatedDate], [UpdatedDate], [IsActive]) VALUES (4, N'Ashikur rahman', N'01811894097', N'987654321', CAST(N'2024-05-26T16:31:00.0000000' AS DateTime2), CAST(N'2024-06-02T16:31:39.6000000' AS DateTime2), NULL, 1)
INSERT [dbo].[Customers] ([Id], [Name], [MobileNo], [NidNo], [Dob], [CreatedDate], [UpdatedDate], [IsActive]) VALUES (5, N'Luvana Akter', N'01811894097', N'987654321', CAST(N'2024-05-27T16:55:00.0000000' AS DateTime2), CAST(N'2024-06-02T16:55:50.0633333' AS DateTime2), CAST(N'2024-06-02T16:55:55.8433333' AS DateTime2), 0)
INSERT [dbo].[Customers] ([Id], [Name], [MobileNo], [NidNo], [Dob], [CreatedDate], [UpdatedDate], [IsActive]) VALUES (6, N'Ashikur rahman', N'01911894098', N'908790897', CAST(N'2024-05-27T12:51:00.0000000' AS DateTime2), CAST(N'2024-06-03T12:51:12.4966667' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCustomer]    Script Date: 6/3/2024 12:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spDeleteCustomer]
(
@id int
)
as

BEGIN
update Customers set UpdatedDate =CURRENT_TIMESTAMP,IsActive = 0 where Id =@id
   
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCustomer]    Script Date: 6/3/2024 12:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spGetAllCustomer]

as

BEGIN
select * from Customers where IsActive = 1
   
END
GO
/****** Object:  StoredProcedure [dbo].[spGetCustomerbyId]    Script Date: 6/3/2024 12:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spGetCustomerbyId]
(@id int)
as
begin
select * from Customers where Id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertCustomer]    Script Date: 6/3/2024 12:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spInsertCustomer]
(
@name varchar(40),
@dob datetime,
@mobileNo varchar(15),
@Nidno varchar(12),
@isActive bit

)
as
IF (ISNULL(@name, '') = '')
BEGIN
    RAISERROR('Invalid parameter: @name cannot be NULL ', 18, 0)
    RETURN
END
IF (ISNULL(@mobileNo, '') = '')
BEGIN
    RAISERROR('Invalid parameter: @fooInt cannot be NULL or empty ', 18, 0)
    RETURN
END

IF (ISNULL(@Nidno, '') = '')
BEGIN
    RAISERROR('Invalid parameter: @Nidno cannot be NULL or empty', 18, 0)
    RETURN
END
declare @existingCustomer int
select @existingCustomer = COUNT(NidNo)  from Customers  where NidNo = @Nidno
if(@existingCustomer >0)
BEGIN
RAISERROR('This Nid is already exists', 18, 0)
RETURN
END

BEGIN
    insert into Customers(Name,MobileNo,NidNo,Dob,IsActive,CreatedDate) values(@name,@mobileNo,@Nidno,@dob,@isActive,CURRENT_TIMESTAMP)
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCustomer]    Script Date: 6/3/2024 12:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spUpdateCustomer]
(
@id int,
@name varchar(40),
@dob datetime,
@createdAt datetime,
@mobileNo varchar(15),
@Nidno varchar(12),
@isActive bit

)
as
IF (ISNULL(@name, '') = '')
BEGIN
    RAISERROR('Invalid parameter: @name cannot be NULL ', 18, 0)
    RETURN
END
IF (ISNULL(@mobileNo, '') = '')
BEGIN
    RAISERROR('Invalid parameter: @fooInt cannot be NULL or empty ', 18, 0)
    RETURN
END

IF (ISNULL(@Nidno, '') = '')
BEGIN
    RAISERROR('Invalid parameter: @Nidno cannot be NULL or empty', 18, 0)
    RETURN
END
BEGIN
update Customers set Name = @name,MobileNo =@mobileNo,NidNo = @Nidno,UpdatedDate =CURRENT_TIMESTAMP,IsActive = @isActive,
Dob=@dob,CreatedDate=@createdAt where Id =@id
   
END
GO
USE [master]
GO
ALTER DATABASE [CrudWithSp] SET  READ_WRITE 
GO
