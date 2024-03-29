USE [master]
GO
/****** Object:  Database [partner_angular_sari_Huminer]    Script Date: 10/07/2019 21:58:39 ******/
CREATE DATABASE [partner_angular_sari_Huminer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'partner_angular_sari_Huminer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\partner_angular_sari_Huminer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'partner_angular_sari_Huminer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\partner_angular_sari_Huminer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [partner_angular_sari_Huminer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET ARITHABORT OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET RECOVERY FULL 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET  MULTI_USER 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'partner_angular_sari_Huminer', N'ON'
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET QUERY_STORE = OFF
GO
USE [partner_angular_sari_Huminer]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [partner_angular_sari_Huminer]
GO
/****** Object:  Table [dbo].[Customer_tbl]    Script Date: 10/07/2019 21:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_tbl](
	[custFName] [varchar](20) NULL,
	[custLName] [varchar](20) NULL,
	[custId] [varchar](9) NOT NULL,
	[adress] [nchar](30) NULL,
 CONSTRAINT [PK_Customer_tbl] PRIMARY KEY CLUSTERED 
(
	[custId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package_tbl]    Script Date: 10/07/2019 21:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package_tbl](
	[packName] [varchar](20) NULL,
	[packId] [varchar](9) NOT NULL,
	[packQty] [int] NULL,
 CONSTRAINT [PK_Package_tbl] PRIMARY KEY CLUSTERED 
(
	[packId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PackagesToSubcRibtion_tbl]    Script Date: 10/07/2019 21:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackagesToSubcRibtion_tbl](
	[subcId] [varchar](9) NOT NULL,
	[packId] [varchar](9) NOT NULL,
	[usingMinitues] [int] NULL,
 CONSTRAINT [PK_PackagesToSubcRibtion_tbl] PRIMARY KEY CLUSTERED 
(
	[subcId] ASC,
	[packId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcribtions]    Script Date: 10/07/2019 21:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcribtions](
	[subcId] [varchar](9) NOT NULL,
	[subsName] [varchar](20) NULL,
 CONSTRAINT [PK_Subcribtions] PRIMARY KEY CLUSTERED 
(
	[subcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubcribtionToCast_tbl]    Script Date: 10/07/2019 21:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubcribtionToCast_tbl](
	[Customer_tbl_custId] [varchar](9) NOT NULL,
	[Subcribtions_subcId] [varchar](9) NOT NULL,
 CONSTRAINT [PK_SubcribtionToCast_tbl] PRIMARY KEY CLUSTERED 
(
	[Customer_tbl_custId] ASC,
	[Subcribtions_subcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer_tbl] ([custFName], [custLName], [custId], [adress]) VALUES (N'Miri', N'Shif', N'123456789', N'Rambam 80                     ')
GO
INSERT [dbo].[Customer_tbl] ([custFName], [custLName], [custId], [adress]) VALUES (N'Eti', N'Shnitzer', N'22837090', N'Yechezkel 14                  ')
GO
INSERT [dbo].[Customer_tbl] ([custFName], [custLName], [custId], [adress]) VALUES (N'Sari', N'Huminer', N'315013565', N'Perel 19                      ')
GO
INSERT [dbo].[Package_tbl] ([packName], [packId], [packQty]) VALUES (N'monthly', N'100', 50)
GO
INSERT [dbo].[Package_tbl] ([packName], [packId], [packQty]) VALUES (N'half free', N'123', 200)
GO
INSERT [dbo].[Package_tbl] ([packName], [packId], [packQty]) VALUES (N'experiency month', N'125', 300)
GO
INSERT [dbo].[Package_tbl] ([packName], [packId], [packQty]) VALUES (N' vip', N'200', 10000)
GO
INSERT [dbo].[PackagesToSubcRibtion_tbl] ([subcId], [packId], [usingMinitues]) VALUES (N'120255669', N'123', 30)
GO
INSERT [dbo].[PackagesToSubcRibtion_tbl] ([subcId], [packId], [usingMinitues]) VALUES (N'120255669', N'200', 50)
GO
INSERT [dbo].[PackagesToSubcRibtion_tbl] ([subcId], [packId], [usingMinitues]) VALUES (N'155554489', N'123', 100)
GO
INSERT [dbo].[Subcribtions] ([subcId], [subsName]) VALUES (N'120255669', N'Sani')
GO
INSERT [dbo].[Subcribtions] ([subcId], [subsName]) VALUES (N'155554489', N'Racheli')
GO
INSERT [dbo].[Subcribtions] ([subcId], [subsName]) VALUES (N'2222556', N'Dasi')
GO
INSERT [dbo].[SubcribtionToCast_tbl] ([Customer_tbl_custId], [Subcribtions_subcId]) VALUES (N'315013565', N'120255669')
GO
INSERT [dbo].[SubcribtionToCast_tbl] ([Customer_tbl_custId], [Subcribtions_subcId]) VALUES (N'22837090', N'155554489')
GO
INSERT [dbo].[SubcribtionToCast_tbl] ([Customer_tbl_custId], [Subcribtions_subcId]) VALUES (N'315013565', N'155554489')
GO
INSERT [dbo].[SubcribtionToCast_tbl] ([Customer_tbl_custId], [Subcribtions_subcId]) VALUES (N'315013565', N'2222556')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK__PackagesT__packI__45F365D3]    Script Date: 10/07/2019 21:58:40 ******/
CREATE NONCLUSTERED INDEX [IX_FK__PackagesT__packI__45F365D3] ON [dbo].[PackagesToSubcRibtion_tbl]
(
	[packId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_SubcribtionToCast_tbl_Subcribtions]    Script Date: 10/07/2019 21:58:40 ******/
CREATE NONCLUSTERED INDEX [IX_FK_SubcribtionToCast_tbl_Subcribtions] ON [dbo].[SubcribtionToCast_tbl]
(
	[Subcribtions_subcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PackagesToSubcRibtion_tbl]  WITH CHECK ADD  CONSTRAINT [FK__PackagesT__packI__45F365D3] FOREIGN KEY([packId])
REFERENCES [dbo].[Package_tbl] ([packId])
GO
ALTER TABLE [dbo].[PackagesToSubcRibtion_tbl] CHECK CONSTRAINT [FK__PackagesT__packI__45F365D3]
GO
ALTER TABLE [dbo].[PackagesToSubcRibtion_tbl]  WITH CHECK ADD  CONSTRAINT [FK__PackagesT__subcI__44FF419A] FOREIGN KEY([subcId])
REFERENCES [dbo].[Subcribtions] ([subcId])
GO
ALTER TABLE [dbo].[PackagesToSubcRibtion_tbl] CHECK CONSTRAINT [FK__PackagesT__subcI__44FF419A]
GO
ALTER TABLE [dbo].[SubcribtionToCast_tbl]  WITH CHECK ADD  CONSTRAINT [FK_SubcribtionToCast_tbl_Customer_tbl] FOREIGN KEY([Customer_tbl_custId])
REFERENCES [dbo].[Customer_tbl] ([custId])
GO
ALTER TABLE [dbo].[SubcribtionToCast_tbl] CHECK CONSTRAINT [FK_SubcribtionToCast_tbl_Customer_tbl]
GO
ALTER TABLE [dbo].[SubcribtionToCast_tbl]  WITH CHECK ADD  CONSTRAINT [FK_SubcribtionToCast_tbl_Subcribtions] FOREIGN KEY([Subcribtions_subcId])
REFERENCES [dbo].[Subcribtions] ([subcId])
GO
ALTER TABLE [dbo].[SubcribtionToCast_tbl] CHECK CONSTRAINT [FK_SubcribtionToCast_tbl_Subcribtions]
GO
USE [master]
GO
ALTER DATABASE [partner_angular_sari_Huminer] SET  READ_WRITE 
GO
