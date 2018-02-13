USE [SIAPMCos]
GO

/****** Object:  Table [dbo].[Lot]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lot](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LotStatus] [int] NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[LineId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[RecipeNo] [int] NULL,
	[ProductId] [int] NULL,
	[ProcessId] [int] NULL,
	[EquipmentId] [int] NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,	
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Material]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Material(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[MaterialType] [int] NOT NULL,
	[RawMaterialType] [int] NULL,
	[ProductType] [int] NULL,
	[CarrierId] [int] NULL,
	[ContainerId] [int] NULL,
	[LineId] [int] NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Ingredient]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Ingredient(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[MaterialId] [int] NULL,
	[Quantity] [int] NULL,
	[Length] [int] NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Plant]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Plant(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Plant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Line]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Line(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PlantId] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Line] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Section]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Section(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[LineId] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Process]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Process(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[SectionId] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Process] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Equipment]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Equipment(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[Index] [int] NULL,
	[Port] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[T3] [int] NULL,
	[T5] [int] NULL,
	[T6] [int] NULL,
	[T7] [int] NULL,
	[T8] [int] NULL,
	[HSMSSessionMode] [int] NULL,
	[ProcessId] [int] NOT NULL,
	[LotId] [int] NULL,
	[Status] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Carrier]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Carrier(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[IsActived] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Carrier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Container]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].Container(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ident] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[ParentContainerId][int] NULL,
	[IsActived] [bit] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Container] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


ALTER TABLE [dbo].[Lot]  WITH CHECK ADD  CONSTRAINT [FK_Lot_Line_LineId] FOREIGN KEY([LineId])
REFERENCES [dbo].[Line] ([Id])
GO
ALTER TABLE [dbo].[Lot] CHECK CONSTRAINT [FK_Lot_Line_LineId]
GO

ALTER TABLE [dbo].[Lot]  WITH CHECK ADD  CONSTRAINT [FK_Lot_Material_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Material] ([Id])

GO
ALTER TABLE [dbo].[Lot] CHECK CONSTRAINT [FK_Lot_Material_ProductId]
GO

ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Material_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Material] ([Id])

GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Material_ProductId]
GO

ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Process_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[Process] ([Id])

GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Process_ProcessId]
GO

ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Equipment_EquipmentId] FOREIGN KEY([EquipmentId])
REFERENCES [dbo].[Equipment] ([Id])

GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Equipment_EquipmentId]
GO

ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Line_LineId] FOREIGN KEY([LineId])
REFERENCES [dbo].[Line] ([Id])

GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Line_LineId]
GO

ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient_Material_MaterialId] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])

GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK_Ingredient_Material_MaterialId]
GO

ALTER TABLE [dbo].[Line]  WITH CHECK ADD  CONSTRAINT [FK_Line_Plant_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plant] ([Id])

GO
ALTER TABLE [dbo].[Line] CHECK CONSTRAINT [FK_Line_Plant_PlantId]
GO

ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Line_LineId] FOREIGN KEY([LineId])
REFERENCES [dbo].[Line] ([Id])

GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Line_LineId]
GO

ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [FK_Process_Section_SectionId] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])

GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [FK_Process_Section_SectionId]
GO

ALTER TABLE [dbo].[Container]  WITH CHECK ADD  CONSTRAINT [FK_Container_Container_ContainerId] FOREIGN KEY([ParentContainerId])
REFERENCES [dbo].[Container] ([Id])

GO
ALTER TABLE [dbo].[Container] CHECK CONSTRAINT [FK_Container_Container_ContainerId]
GO

ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Container_ContainerId] FOREIGN KEY([ContainerId])
REFERENCES [dbo].[Container] ([Id])

GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Container_ContainerId]
GO

ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Container_ContainerId] FOREIGN KEY([ContainerId])
REFERENCES [dbo].[Container] ([Id])

GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Container_ContainerId]
GO

ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Process_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[Process] ([Id])

GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Process_ProcessId]
GO



ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Lot_LotId] FOREIGN KEY([LotId])
REFERENCES [dbo].[Lot] ([Id])

GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Lot_LotId]


/****** Object:  Table [dbo].[Plant]    Script Date: 2018/2/13 14:00:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessSection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [int] NOT NULL,
	[ProcessId] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProcessSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ProcessSection]  WITH CHECK ADD  CONSTRAINT [FK_ProcessSection_Section_SectionId] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])

GO
ALTER TABLE [dbo].[ProcessSection] CHECK CONSTRAINT [FK_ProcessSection_Section_SectionId]

ALTER TABLE [dbo].[ProcessSection]  WITH CHECK ADD  CONSTRAINT [FK_ProcessSection_Process_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[Process] ([Id])

GO
ALTER TABLE [dbo].[ProcessSection] CHECK CONSTRAINT [FK_ProcessSection_Process_ProcessId]