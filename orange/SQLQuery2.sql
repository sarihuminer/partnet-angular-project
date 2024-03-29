USE [partner_angular_sari_Huminer]
GO
/****** Object:  Table [dbo].[Customer_tbl]    Script Date: 24/06/2019 17:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_tbl](
	[custFName] [varchar](20) NULL,
	[custLName] [varchar](20) NULL,
	[custId] [varchar](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[custId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package_tbl]    Script Date: 24/06/2019 17:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package_tbl](
	[packName] [varchar](20) NULL,
	[packId] [varchar](9) NOT NULL,
	[packQty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[packId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PackagesToSubcRibtion_tbl]    Script Date: 24/06/2019 17:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackagesToSubcRibtion_tbl](
	[subcId] [varchar](9) NOT NULL,
	[packId] [varchar](9) NOT NULL,
	[usingMinitues] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcribtions]    Script Date: 24/06/2019 17:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcribtions](
	[subcId] [varchar](9) NOT NULL,
	[subsName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[subcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubcribtionToCast_tbl]    Script Date: 24/06/2019 17:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubcribtionToCast_tbl](
	[custId] [varchar](9) NOT NULL,
	[subcId] [varchar](9) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PackagesToSubcRibtion_tbl]  WITH CHECK ADD FOREIGN KEY([packId])
REFERENCES [dbo].[Package_tbl] ([packId])
GO
ALTER TABLE [dbo].[PackagesToSubcRibtion_tbl]  WITH CHECK ADD FOREIGN KEY([subcId])
REFERENCES [dbo].[Subcribtions] ([subcId])
GO
ALTER TABLE [dbo].[SubcribtionToCast_tbl]  WITH CHECK ADD FOREIGN KEY([custId])
REFERENCES [dbo].[Customer_tbl] ([custId])
GO
ALTER TABLE [dbo].[SubcribtionToCast_tbl]  WITH CHECK ADD FOREIGN KEY([subcId])
REFERENCES [dbo].[Subcribtions] ([subcId])
GO
