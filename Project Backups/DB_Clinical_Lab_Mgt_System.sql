USE [master]
GO
/****** Object:  Database [Clinical_Lab_Management_System_DB]    Script Date: 05-06-2022 22:35:37 ******/
CREATE DATABASE [Clinical_Lab_Management_System_DB] ON  PRIMARY 
( NAME = N'Clinical_Lab_Management_System_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Clinical_Lab_Management_System_DB.mdf' , SIZE = 10496KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Clinical_Lab_Management_System_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Clinical_Lab_Management_System_DB_log.LDF' , SIZE = 10176KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Clinical_Lab_Management_System_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET DB_CHAINING OFF 
GO
USE [Clinical_Lab_Management_System_DB]
GO
/****** Object:  Table [dbo].[Doctor_Detail]    Script Date: 05-06-2022 22:35:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Detail](
	[D_ID] [int] NOT NULL,
	[D_FName] [varchar](50) NOT NULL,
	[D_MName] [varchar](50) NOT NULL,
	[D_Surname] [varchar](50) NOT NULL,
	[D_FullName] [varchar](50) NOT NULL,
	[D_DOB] [date] NOT NULL,
	[D_Age] [int] NOT NULL,
	[D_Gender] [varchar](10) NOT NULL,
	[D_Degree] [varchar](30) NOT NULL,
	[D_MobNo1] [decimal](10, 0) NOT NULL,
	[D_MobNo2] [decimal](10, 0) NULL,
	[D_AadharNo] [decimal](12, 0) NOT NULL,
	[D_EmailID] [nvarchar](50) NOT NULL,
	[D_Address] [nvarchar](50) NOT NULL,
	[D_District] [varchar](50) NOT NULL,
	[D_State] [varchar](50) NOT NULL,
	[D_Country] [varchar](50) NOT NULL,
	[D_Pincode] [decimal](6, 0) NOT NULL,
	[D_RegBy] [varchar](50) NOT NULL,
	[D_RegDate] [date] NOT NULL,
	[D_Image] [image] NOT NULL,
 CONSTRAINT [PK_Doctor_Detail] PRIMARY KEY CLUSTERED 
(
	[D_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 05-06-2022 22:35:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_Detail]    Script Date: 05-06-2022 22:35:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Detail](
	[P_ID] [int] NOT NULL,
	[P_FName] [varchar](50) NOT NULL,
	[P_MName] [varchar](50) NOT NULL,
	[P_Surname] [varchar](50) NOT NULL,
	[P_FullName] [varchar](50) NOT NULL,
	[P_DOB] [date] NOT NULL,
	[P_Age] [int] NOT NULL,
	[P_Gender] [varchar](50) NOT NULL,
	[P_AadharNo] [decimal](12, 0) NULL,
	[P_Address] [nvarchar](50) NOT NULL,
	[P_MobNo1] [decimal](12, 0) NOT NULL,
	[P_MobNo2] [decimal](12, 0) NULL,
	[P_EmailId] [nvarchar](30) NULL,
	[P_RefBy] [varchar](50) NOT NULL,
	[P_RegBy] [varchar](50) NOT NULL,
	[P_Allergy] [nvarchar](50) NULL,
	[P_AllergyName] [nvarchar](50) NULL,
	[P_Sideeffects] [nvarchar](50) NULL,
	[P_Total_Test] [int] NOT NULL,
	[P_Fees] [money] NOT NULL,
	[P_Discount] [float] NULL,
	[P_TotalAmount] [money] NOT NULL,
	[P_PaidBy] [nvarchar](50) NOT NULL,
	[P_Payment_Status] [varchar](50) NULL,
	[P_Remark] [nvarchar](50) NULL,
	[P_RegDate] [date] NOT NULL,
	[Dr_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Patient_Detail] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_Test]    Script Date: 05-06-2022 22:35:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Test](
	[P_ID] [int] NOT NULL,
	[P_Test_Name] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Detail]    Script Date: 05-06-2022 22:35:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Detail](
	[S_ID] [int] NOT NULL,
	[S_FName] [varchar](50) NOT NULL,
	[S_MName] [varchar](50) NOT NULL,
	[S_Surname] [varchar](50) NOT NULL,
	[S_FullName] [varchar](50) NOT NULL,
	[S_Dob] [date] NOT NULL,
	[S_Age] [int] NOT NULL,
	[S_Gender] [varchar](10) NOT NULL,
	[S_Education] [varchar](50) NOT NULL,
	[S_Post] [varchar](50) NOT NULL,
	[S_MobNo1] [decimal](10, 0) NOT NULL,
	[S_MobNo2] [decimal](10, 0) NOT NULL,
	[S_AadharNo] [decimal](12, 0) NOT NULL,
	[S_EmailID] [nvarchar](50) NOT NULL,
	[S_Address] [nvarchar](50) NOT NULL,
	[S_District] [varchar](50) NOT NULL,
	[S_State] [varchar](50) NOT NULL,
	[S_Country] [varchar](50) NOT NULL,
	[S_Pincode] [decimal](6, 0) NOT NULL,
	[S_ShiftTime] [varchar](50) NOT NULL,
	[S_RegBy] [varchar](50) NOT NULL,
	[S_Image] [image] NOT NULL,
	[S_RegDate] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test_Detail]    Script Date: 05-06-2022 22:35:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Detail](
	[T_ID] [int] NOT NULL,
	[T_Category] [varchar](50) NOT NULL,
	[T_Name] [varchar](50) NOT NULL,
	[T_Lo_Range] [int] NOT NULL,
	[T_Up_Range] [int] NOT NULL,
	[T_Unit] [nvarchar](50) NOT NULL,
	[T_Price] [int] NOT NULL,
	[T_Description] [nvarchar](50) NOT NULL,
	[T_Reg_Date] [date] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Clinical_Lab_Management_System_DB] SET  READ_WRITE 
GO
