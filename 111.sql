USE [master]
GO
/****** Object:  Database [GrBritainRadel]    Script Date: 16.09.2022 1:07:38 ******/
CREATE DATABASE [GrBritainRadel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GrBritainRadel', FILENAME = N'D:\Базы Данных\GrBritainRadel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GrBritainRadel_log', FILENAME = N'D:\Базы Данных\GrBritainRadel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GrBritainRadel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GrBritainRadel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ARITHABORT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GrBritainRadel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GrBritainRadel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GrBritainRadel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GrBritainRadel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GrBritainRadel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GrBritainRadel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GrBritainRadel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GrBritainRadel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GrBritainRadel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GrBritainRadel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GrBritainRadel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GrBritainRadel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GrBritainRadel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GrBritainRadel] SET  MULTI_USER 
GO
ALTER DATABASE [GrBritainRadel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GrBritainRadel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GrBritainRadel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GrBritainRadel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GrBritainRadel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GrBritainRadel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GrBritainRadel', N'ON'
GO
ALTER DATABASE [GrBritainRadel] SET QUERY_STORE = OFF
GO
USE [GrBritainRadel]
GO
/****** Object:  Table [dbo].[Category_Product]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Product](
	[CategoryId] [int] NOT NULL,
	[Name_Category] [nvarchar](100) NULL,
 CONSTRAINT [PK_Category_Product] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Sotrudnika]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Sotrudnika](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CategoryZP] [float] NULL,
 CONSTRAINT [PK_Category_Sotrudnika] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developer]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developer](
	[id_developer] [int] NOT NULL,
	[name_developer] [nvarchar](100) NULL,
	[WorkingBeginDate] [date] NULL,
 CONSTRAINT [PK_Developer] PRIMARY KEY CLUSTERED 
(
	[id_developer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gate]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gate](
	[id_uslugi] [int] NOT NULL,
	[id_sotrudnika] [int] NOT NULL,
 CONSTRAINT [PK_gate] PRIMARY KEY CLUSTERED 
(
	[id_uslugi] ASC,
	[id_sotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historyBuy]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historyBuy](
	[id_history] [int] NOT NULL,
	[id_product] [int] NULL,
	[count_product_buy] [int] NULL,
	[date_buy] [datetime] NULL,
	[id_usr] [int] NULL,
 CONSTRAINT [PK_historyBuy] PRIMARY KEY CLUSTERED 
(
	[id_history] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id_product] [int] NOT NULL,
	[name_product] [nvarchar](50) NULL,
	[photo_product] [nvarchar](max) NULL,
	[price_product] [int] NULL,
	[weight_product] [float] NULL,
	[width_product] [float] NULL,
	[height_product] [float] NULL,
	[length_product] [float] NULL,
	[isActive] [char](1) NULL,
	[DeveloperId] [int] NULL,
	[CategoryId] [int] NULL,
	[Season_id] [int] NULL,
	[count_product] [int] NULL,
	[id_sclad] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sclad]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sclad](
	[id_sclad] [int] NOT NULL,
	[address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sclad] PRIMARY KEY CLUSTERED 
(
	[id_sclad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[Season_id] [int] NOT NULL,
	[name_season] [nvarchar](5) NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[Season_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[id_sotrudnika] [int] NOT NULL,
	[fistname_sotr] [nvarchar](100) NULL,
	[secondname_sotr] [nvarchar](100) NULL,
	[patronymic_sotr] [nvarchar](100) NULL,
	[date_birthday_sotr] [date] NULL,
	[gender] [char](1) NULL,
	[seriaPassport] [nvarchar](4) NULL,
	[numberPassport] [nvarchar](6) NULL,
	[codePassport] [nvarchar](7) NULL,
	[isActive] [char](1) NULL,
	[KoefZP] [float] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[id_sotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_usr] [int] NOT NULL,
	[photo_usr] [nvarchar](max) NULL,
	[firstname] [nvarchar](100) NULL,
	[secondname] [nvarchar](100) NULL,
	[patronymic] [nvarchar](100) NULL,
	[date_birthday] [date] NULL,
	[date_registr] [datetime] NULL,
	[email] [nvarchar](100) NULL,
	[numberphone] [nvarchar](11) NULL,
	[login_usr] [nvarchar](50) NULL,
	[password_usr] [nvarchar](50) NULL,
	[roles] [nvarchar](4) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id_usr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 16.09.2022 1:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uslugi](
	[id_uslugi] [int] NOT NULL,
	[name_uslugi] [nvarchar](50) NULL,
	[Opicanie_uslugi] [nvarchar](max) NULL,
	[price_uslugi] [float] NULL,
	[dlitel_uslugi] [int] NULL,
	[photo_uslugi] [nvarchar](max) NULL,
	[Season_id] [int] NULL,
 CONSTRAINT [PK_Uslugi] PRIMARY KEY CLUSTERED 
(
	[id_uslugi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[gate]  WITH CHECK ADD  CONSTRAINT [FK_gate_Sotrudniki] FOREIGN KEY([id_sotrudnika])
REFERENCES [dbo].[Sotrudniki] ([id_sotrudnika])
GO
ALTER TABLE [dbo].[gate] CHECK CONSTRAINT [FK_gate_Sotrudniki]
GO
ALTER TABLE [dbo].[gate]  WITH CHECK ADD  CONSTRAINT [FK_gate_Uslugi] FOREIGN KEY([id_uslugi])
REFERENCES [dbo].[Uslugi] ([id_uslugi])
GO
ALTER TABLE [dbo].[gate] CHECK CONSTRAINT [FK_gate_Uslugi]
GO
ALTER TABLE [dbo].[historyBuy]  WITH CHECK ADD  CONSTRAINT [FK_historyBuy_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([id_product])
GO
ALTER TABLE [dbo].[historyBuy] CHECK CONSTRAINT [FK_historyBuy_Product]
GO
ALTER TABLE [dbo].[historyBuy]  WITH CHECK ADD  CONSTRAINT [FK_historyBuy_Users] FOREIGN KEY([id_usr])
REFERENCES [dbo].[Users] ([id_usr])
GO
ALTER TABLE [dbo].[historyBuy] CHECK CONSTRAINT [FK_historyBuy_Users]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_Product] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category_Product] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Developer] FOREIGN KEY([DeveloperId])
REFERENCES [dbo].[Developer] ([id_developer])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Developer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Sclad] FOREIGN KEY([id_sclad])
REFERENCES [dbo].[Sclad] ([id_sclad])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Sclad]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Seasons] FOREIGN KEY([Season_id])
REFERENCES [dbo].[Seasons] ([Season_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Seasons]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Category_Sotrudnika] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category_Sotrudnika] ([CategoryID])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Category_Sotrudnika]
GO
ALTER TABLE [dbo].[Uslugi]  WITH CHECK ADD  CONSTRAINT [FK_Uslugi_Seasons] FOREIGN KEY([Season_id])
REFERENCES [dbo].[Seasons] ([Season_id])
GO
ALTER TABLE [dbo].[Uslugi] CHECK CONSTRAINT [FK_Uslugi_Seasons]
GO
USE [master]
GO
ALTER DATABASE [GrBritainRadel] SET  READ_WRITE 
GO
