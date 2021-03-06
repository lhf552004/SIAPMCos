USE [SIAPMCos]
GO

/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2018/01/24 15:13:49 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuditStatus] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductAttributes] [nvarchar](max) NULL,
	[ResourceItemId] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[AgeScope] [nvarchar](150) NULL,
	[ExtraInfo] [nvarchar](max) NULL,
	[Gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdsProgram]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdsProgram](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdsId] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EndTime] [datetime2](7) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[StartedTime] [datetime2](7) NULL,
	[Transition] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_AdsProgram] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdsTag]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdsTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdsId] [int] NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[TagId] [int] NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_AdsTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdsTemplate]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdsTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[Height] [float] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[Width] [float] NOT NULL,
 CONSTRAINT [PK_AdsTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdsTemplateResources]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdsTemplateResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdsTemplateId] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Duration] [time](7) NULL,
	[Extends] [nvarchar](max) NULL,
	[Height] [float] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[LoadingTime] [time](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ResourceItemId] [int] NOT NULL,
	[Transition] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[Width] [float] NOT NULL,
	[X] [float] NOT NULL,
	[Y] [float] NOT NULL,
 CONSTRAINT [PK_AdsTemplateResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplyForm]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplyStatus] [int] NOT NULL,
	[ApplyType] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Reason] [nvarchar](max) NULL,
	[ResultMessage] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[Wanted] [int] NOT NULL,
	[Options] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplyForm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplyForm_Ads]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForm_Ads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdsId] [int] NOT NULL,
	[ApplyFormId] [int] NOT NULL,
 CONSTRAINT [PK_ApplyForm_Ads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplyForm_App]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForm_App](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplyFormId] [int] NOT NULL,
	[SoftwareId] [int] NOT NULL,
 CONSTRAINT [PK_ApplyForm_App] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplyForm_Coupon]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForm_Coupon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplyFormId] [int] NOT NULL,
	[CouponId] [int] NOT NULL,
 CONSTRAINT [PK_ApplyForm_Coupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplyForm_Device]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForm_Device](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplyFormId] [int] NOT NULL,
	[DeviceId] [int] NOT NULL,
 CONSTRAINT [PK_ApplyForm_Device] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplyForm_Product]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForm_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplyFormId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ApplyForm_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplyForm_Sku]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForm_Sku](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplyFormId] [int] NOT NULL,
	[SkuId] [int] NOT NULL,
 CONSTRAINT [PK_ApplyForm_Sku] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2018/01/24 15:13:49 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[AvatarUrl] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[GroupId] [int] NULL,
	[IsActived] [bit] NOT NULL,
	[LastLoginTime] [datetime2](7) NULL,
	[LastName] [nvarchar](max) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[ObjectState] [int] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Skin] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatchTaskLog]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchTaskLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[CompletedCount] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Status] [nvarchar](max) NULL,
	[TotalCount] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_BatchTaskLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BehaviorRecord]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BehaviorRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](max) NULL,
	[Cateogory] [nvarchar](max) NULL,
	[CollectTime] [datetime2](7) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DeviceId] [int] NOT NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[Increment] [int] NOT NULL,
	[IsSynced] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Software] [nvarchar](max) NULL,
	[ThingId] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[CollectEndTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BehaviorRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[NO] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[PositionId] [int] NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[amount] [int] NOT NULL,
	[coupon_id] [int] NOT NULL,
	[end_time] [datetime2](7) NOT NULL,
	[pictures] [nvarchar](max) NULL,
	[spread_id] [nvarchar](max) NULL,
	[start_time] [datetime2](7) NOT NULL,
	[title] [nvarchar](max) NULL,
	[AuditStatus] [int] NOT NULL,
 CONSTRAINT [PK_Coupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[AuditStatus] [int] NOT NULL,
	[CaptureImageUrl] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[CoverArea] [int] NOT NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DeviceTypeId] [int] NOT NULL,
	[ErrorStartTime] [datetime2](7) NULL,
	[ExpiredTime] [datetime2](7) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[HardwareCode] [nvarchar](max) NULL,
	[HeartBeatTime] [datetime2](7) NULL,
	[HeatImageUrl] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[InternetIP] [nvarchar](max) NULL,
	[IntranetIP] [nvarchar](max) NULL,
	[IsLocked] [bit] NOT NULL,
	[IsRegistered] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[LicenseInfo] [nvarchar](max) NULL,
	[Mac] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OS] [nvarchar](max) NULL,
	[OnlineTrafficTarget] [int] NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[OutId] [nvarchar](max) NULL,
	[OutType] [int] NOT NULL,
	[Resolution_Height] [float] NOT NULL,
	[Resolution_Width] [float] NOT NULL,
	[RoomId] [int] NULL,
	[ShutdownTime] [datetime2](7) NULL,
	[SnapshotTime] [datetime2](7) NOT NULL,
	[SnapshotUrl] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[SubKey] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device_DeviceCategory]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device_DeviceCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DeviceCategoryId] [int] NOT NULL,
	[DeviceId] [int] NOT NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Device_DeviceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceAds]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceAds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdsId] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DeviceId] [int] NOT NULL,
	[Duration] [time](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[StartedTime] [datetime2](7) NULL,
	[Transition] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeviceAds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCategory]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DeviceId] [int] NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeviceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCoupon]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCoupon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CouponId] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
 CONSTRAINT [PK_DeviceCoupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevicePeripheral]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevicePeripheral](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[PeripheralId] [int] NOT NULL,
 CONSTRAINT [PK_DevicePeripheral] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceProduct]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_DeviceProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceSku]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceSku](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[SkuId] [int] NOT NULL,
 CONSTRAINT [PK_DeviceSku] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceSoftware]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceSoftware](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[CustomizeSetting] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DeviceId] [int] NOT NULL,
	[ExpiredTime] [datetime2](7) NULL,
	[Extends] [nvarchar](max) NULL,
	[HostingStatus] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[MaterialPacketUrl] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[SoftwareId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeviceSoftware] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceTag]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DeviceID] [int] NOT NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeviceTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceType]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Manufacturer] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[UniqueKey] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeviceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalAccessTokenInfo]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalAccessTokenInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[FromType] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[IsEnable] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[StoreId] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[access_token] [nvarchar](max) NULL,
	[expire_time] [nvarchar](max) NULL,
	[expires_in] [nvarchar](max) NULL,
	[r1_expires_in] [nvarchar](max) NULL,
	[r1_valid] [nvarchar](max) NULL,
	[r2_expires_in] [nvarchar](max) NULL,
	[r2_valid] [nvarchar](max) NULL,
	[re_expires_in] [nvarchar](max) NULL,
	[refresh_token] [nvarchar](max) NULL,
	[refresh_token_valid_time] [nvarchar](max) NULL,
	[sub_taobao_user_id] [nvarchar](max) NULL,
	[sub_taobao_user_nick] [nvarchar](max) NULL,
	[taobao_user_id] [nvarchar](max) NULL,
	[taobao_user_nick] [nvarchar](max) NULL,
	[token_type] [nvarchar](max) NULL,
	[w1_expires_in] [nvarchar](max) NULL,
	[w1_valid] [nvarchar](max) NULL,
	[w2_expires_in] [nvarchar](max) NULL,
	[w2_valid] [nvarchar](max) NULL,
 CONSTRAINT [PK_ExternalAccessTokenInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Floor]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuildingId] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[NO] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[ThumbnailImageUrl] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Floor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[BizType] [nvarchar](max) NULL,
	[CanAcceptAdsAutoSendDown] [bit] NOT NULL,
	[CanAcceptAppAutoSendDown] [bit] NOT NULL,
	[CanAcceptProductAutoSendDown] [bit] NOT NULL,
	[CategoryId] [nvarchar](max) NULL,
	[ClosedTime] [datetime2](7) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Contact] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Declaration] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NOT NULL,
	[EmailPassword] [nvarchar](max) NULL,
	[EmailService] [nvarchar](max) NULL,
	[EmailUserName] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupPassword] [nvarchar](max) NULL,
	[GroupType] [int] NOT NULL,
	[IsAdsAutoSendDown] [bit] NOT NULL,
	[IsAppAutoSendDown] [bit] NOT NULL,
	[IsNeedAdsApprove] [bit] NOT NULL,
	[IsNeedAppApprove] [bit] NOT NULL,
	[IsNeedDeviceApprove] [bit] NOT NULL,
	[IsNeedThingApprove] [bit] NOT NULL,
	[IsProductAutoSendDown] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[OmniStoreId] [nvarchar](max) NULL,
	[OnlineTrafficTarget] [int] NOT NULL,
	[OpeningTime] [datetime2](7) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[OuterId] [nvarchar](max) NULL,
	[ParentGroupId] [int] NULL,
	[PositionId] [int] NULL,
	[QRCodeUrl] [nvarchar](max) NULL,
	[QrCodeExtraInfo] [nvarchar](max) NULL,
	[QrcodeRules] [nvarchar](max) NULL,
	[SubscriptionKey] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[WebAddressUrl] [nvarchar](max) NULL,
	[CanAcceptCouponAutoSendDown] [bit] NOT NULL,
	[IsCouponAutoSendDown] [bit] NOT NULL,
	[IsNeedCouponApprove] [bit] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupClaims]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_GroupClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSoftware]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSoftware](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EndTime] [datetime2](7) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Setting] [nvarchar](max) NULL,
	[SoftwareId] [int] NOT NULL,
	[StartTime] [datetime2](7) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_GroupSoftware] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LikeInfo]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikeInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_LikeInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LikeItem]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikeItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LikeInfoId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[Reason] [nvarchar](max) NULL,
	[SkuId] [int] NULL,
 CONSTRAINT [PK_LikeItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchInfo]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BImg] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[MImg] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[SImg] [nvarchar](max) NULL,
	[ShowImage] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_MatchInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchItem]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchInfoId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[Reason] [nvarchar](max) NULL,
	[SkuId] [int] NULL,
 CONSTRAINT [PK_MatchItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnlineStorePlatformInfo]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnlineStorePlatformInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Platform] [int] NOT NULL,
	[QrcodeRules] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_OnlineStorePlatformInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnlineStoreProfile]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnlineStoreProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OnlineStoreType] [int] NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[StaffId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_OnlineStoreProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentGroupAds]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentGroupAds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdsId] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
 CONSTRAINT [PK_ParentGroupAds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentGroupCoupon]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentGroupCoupon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CouponId] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
 CONSTRAINT [PK_ParentGroupCoupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentGroupProduct]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentGroupProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ParentGroupProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentGroupSku]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentGroupSku](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[SkuId] [int] NOT NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ParentGroupSku] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peripheral]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peripheral](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Peripheral] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Area] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[County] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Latitude] [nvarchar](max) NULL,
	[Longitude] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Province] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApproveStatus] [nvarchar](max) NULL,
	[AuditStatus] [int] NOT NULL,
	[Barcode] [nvarchar](max) NULL,
	[Brand] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Desc] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DetailUrl] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[Features] [nvarchar](max) NULL,
	[FromType] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[HasDiscount] [bit] NOT NULL,
	[HasShowcase] [bit] NOT NULL,
	[Identity] [nvarchar](max) NULL,
	[Is3D] [bit] NOT NULL,
	[IsXinpin] [bit] NOT NULL,
	[ItemId] [nvarchar](max) NULL,
	[ItemSize] [nvarchar](max) NULL,
	[ItemWeight] [nvarchar](max) NULL,
	[Keywords] [nvarchar](max) NULL,
	[LargeScreenImageUrl] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[ListTime] [nvarchar](max) NULL,
	[Material] [nvarchar](max) NULL,
	[Material3DUrl] [nvarchar](max) NULL,
	[ModelNO] [nvarchar](max) NULL,
	[Num] [bigint] NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[OuterId] [nvarchar](max) NULL,
	[PicUrl] [nvarchar](max) NULL,
	[PlatformPicUrl] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[Proc_Fee] [nvarchar](max) NULL,
	[Prom_Price] [nvarchar](max) NULL,
	[Prom_Proc_Fee] [nvarchar](max) NULL,
	[Prom_Type] [nvarchar](max) NULL,
	[Props] [nvarchar](max) NULL,
	[PropsName] [nvarchar](max) NULL,
	[SellerId] [nvarchar](max) NULL,
	[ShopType] [nvarchar](max) NULL,
	[StuffStatus] [nvarchar](max) NULL,
	[Style] [nvarchar](max) NULL,
	[SubTitle] [nvarchar](max) NULL,
	[SuitablePeople] [nvarchar](max) NULL,
	[SumPropsName] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[VideoUrl] [nvarchar](max) NULL,
	[XCode] [nvarchar](max) NULL,
	[VisualImagePropertyId] [int] NULL,
	[AgeScope] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Price2] [float] NULL,
	[RfidCode] [nvarchar](max) NULL,
	[SalesVolume] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_DecideImage]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_DecideImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PropertyValueId] [int] NOT NULL,
	[SyncImageUrl] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product_DecideImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_ProductCategory]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductCategoryId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_PropertyValue]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_PropertyValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PropertyValueId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product_PropertyValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryCode] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[FromType] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[IconUrl] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ImageUrl2] [nvarchar](max) NULL,
	[IsLocal] [bit] NOT NULL,
	[IsSpecial] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[ParentCategoryId] [int] NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductComments]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AvatorUrl] [nvarchar](max) NULL,
	[CommentDateTime] [datetime2](7) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOnlineStoreInfo]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOnlineStoreInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[Inventory] [int] NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OnlineStoreType] [int] NOT NULL,
	[OnlineStoreTypeId] [int] NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[PID] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[ProductId] [int] NOT NULL,
	[Qrcode] [nvarchar](max) NULL,
	[StoreId] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductOnlineStoreInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPromotion]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPromotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PromotionId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductPromotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductResourceFile]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductResourceFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[FromType] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ResourceItemId] [int] NOT NULL,
	[SkuId] [int] NULL,
	[Type] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductResourceFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTag]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EndTime] [datetime2](7) NOT NULL,
	[Extends] [nvarchar](max) NULL,
	[FromType] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[OtherNeed] [nvarchar](max) NULL,
	[OtherSend] [nvarchar](max) NULL,
	[OuterId] [nvarchar](max) NULL,
	[PromotionType] [int] NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[FromType] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[IsDefaultDecideImage] [bit] NOT NULL,
	[IsForSale] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyValue]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_PropertyValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourceFile]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[FileUrl] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[Height] [float] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Size] [float] NOT NULL,
	[ThumbnailUrl] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[Width] [float] NOT NULL,
 CONSTRAINT [PK_ResourceFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaHeight] [real] NOT NULL,
	[AreaWidth] [real] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[FloorId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[LocationX] [real] NOT NULL,
	[LocationY] [real] NOT NULL,
	[LogoLocationX] [real] NOT NULL,
	[LogoLocationY] [real] NOT NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[NO] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[PathLocationX] [real] NOT NULL,
	[PathLocationY] [real] NOT NULL,
	[RoomType] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sku]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sku](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuditStatus] [int] NOT NULL,
	[Barcode] [nvarchar](max) NULL,
	[ChangeProp] [nvarchar](max) NULL,
	[ColorId] [nvarchar](max) NULL,
	[ColorName] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[ExtraId] [bigint] NOT NULL,
	[FromType] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[HasSelfImage] [bit] NOT NULL,
	[Is3D] [bit] NOT NULL,
	[Keywords] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Material3DUrl] [nvarchar](max) NULL,
	[Memo] [nvarchar](max) NULL,
	[NumIid] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[OuterId] [nvarchar](max) NULL,
	[PicUrl] [nvarchar](max) NULL,
	[PlatformPicUrl] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[Proc_Fee] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Prom_Price] [nvarchar](max) NULL,
	[Prom_Proc_Fee] [nvarchar](max) NULL,
	[Prom_Type] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[PropertiesName] [nvarchar](max) NULL,
	[Quantity] [bigint] NOT NULL,
	[SkuDeliveryTime] [nvarchar](max) NULL,
	[SkuSpecId] [bigint] NOT NULL,
	[Sku_id] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[SuitablePeople] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[AgeScope] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Price2] [float] NULL,
	[RfidCode] [nvarchar](max) NULL,
	[SalesVolume] [int] NULL,
 CONSTRAINT [PK_Sku] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sku_PropertyValue]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sku_PropertyValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[PropertyValueId] [int] NOT NULL,
	[SkuId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sku_PropertyValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkuOnlineStoreInfo]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkuOnlineStoreInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[Inventory] [int] NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OnlineStoreType] [int] NOT NULL,
	[OnlineStoreTypeId] [int] NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[Price] [float] NULL,
	[Qrcode] [nvarchar](max) NULL,
	[SkuId] [int] NOT NULL,
	[Sku_ID] [nvarchar](max) NULL,
	[StoreId] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_SkuOnlineStoreInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkuPromotion]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkuPromotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[ProductPromotionId] [int] NOT NULL,
	[SkuId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_SkuPromotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkuResourceFile]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkuResourceFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[FromType] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[ResourceItemId] [int] NOT NULL,
	[SkuId] [int] NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_SkuResourceFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkuTag]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkuTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[SkuId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_SkuTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Software]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Software](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuditStatus] [int] NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EnvType] [int] NOT NULL,
	[ExePath] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[Language] [nvarchar](max) NULL,
	[LargeImageUrl] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[LogoUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Owner] [nvarchar](max) NULL,
	[PackageUrl] [nvarchar](max) NULL,
	[Setting] [nvarchar](500) NULL,
	[TargetResolution] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[VersionNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Software] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AvatarUrl] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[GroupId] [int] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[RFIDCode] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
	[Password] [nvarchar](150) NULL,
	[OuterId] [nvarchar](150) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[GroupId] [int] NULL,
	[IconUrl] [nvarchar](max) NULL,
	[IsSpecial] [bit] NOT NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaobaoOpenPlatform]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaobaoOpenPlatform](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppKey] [nvarchar](max) NULL,
	[AppName] [nvarchar](max) NULL,
	[CallBackUrl] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Secret] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaobaoOpenPlatform] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaobaoStoreAccount]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaobaoStoreAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](max) NULL,
	[Account_id] [int] NOT NULL,
	[Alipay_account] [nvarchar](max) NULL,
	[Alipay_name] [nvarchar](max) NULL,
	[Authority] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Erp_id] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[OrderNumber] [int] NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Post] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Store_id] [int] NOT NULL,
	[Store_name] [nvarchar](max) NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaobaoStoreAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[Comments] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Created] [datetime2](7) NULL,
	[Creator] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Extends] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NULL,
	[OrderNumber] [int] NOT NULL,
	[Updater] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[BehaviorRecord] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [CollectEndTime]
GO
ALTER TABLE [dbo].[Coupon] ADD  DEFAULT ((0)) FOR [AuditStatus]
GO
ALTER TABLE [dbo].[Group] ADD  DEFAULT ((0)) FOR [CanAcceptCouponAutoSendDown]
GO
ALTER TABLE [dbo].[Group] ADD  DEFAULT ((0)) FOR [IsCouponAutoSendDown]
GO
ALTER TABLE [dbo].[Group] ADD  DEFAULT ((0)) FOR [IsNeedCouponApprove]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_Group_GroupId]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [FK_Ads_ResourceFile_ResourceItemId] FOREIGN KEY([ResourceItemId])
REFERENCES [dbo].[ResourceFile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [FK_Ads_ResourceFile_ResourceItemId]
GO
ALTER TABLE [dbo].[AdsProgram]  WITH CHECK ADD  CONSTRAINT [FK_AdsProgram_Ads_AdsId] FOREIGN KEY([AdsId])
REFERENCES [dbo].[Ads] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdsProgram] CHECK CONSTRAINT [FK_AdsProgram_Ads_AdsId]
GO
ALTER TABLE [dbo].[AdsProgram]  WITH CHECK ADD  CONSTRAINT [FK_AdsProgram_Program_ProgramId] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Program] ([Id])
GO
ALTER TABLE [dbo].[AdsProgram] CHECK CONSTRAINT [FK_AdsProgram_Program_ProgramId]
GO
ALTER TABLE [dbo].[AdsTag]  WITH CHECK ADD  CONSTRAINT [FK_AdsTag_Ads_AdsId] FOREIGN KEY([AdsId])
REFERENCES [dbo].[Ads] ([Id])
GO
ALTER TABLE [dbo].[AdsTag] CHECK CONSTRAINT [FK_AdsTag_Ads_AdsId]
GO
ALTER TABLE [dbo].[AdsTag]  WITH CHECK ADD  CONSTRAINT [FK_AdsTag_Tag_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[AdsTag] CHECK CONSTRAINT [FK_AdsTag_Tag_TagId]
GO
ALTER TABLE [dbo].[AdsTemplateResources]  WITH CHECK ADD  CONSTRAINT [FK_AdsTemplateResources_AdsTemplate_AdsTemplateId] FOREIGN KEY([AdsTemplateId])
REFERENCES [dbo].[AdsTemplate] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdsTemplateResources] CHECK CONSTRAINT [FK_AdsTemplateResources_AdsTemplate_AdsTemplateId]
GO
ALTER TABLE [dbo].[AdsTemplateResources]  WITH CHECK ADD  CONSTRAINT [FK_AdsTemplateResources_ResourceFile_ResourceItemId] FOREIGN KEY([ResourceItemId])
REFERENCES [dbo].[ResourceFile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdsTemplateResources] CHECK CONSTRAINT [FK_AdsTemplateResources_ResourceFile_ResourceItemId]
GO
ALTER TABLE [dbo].[ApplyForm]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplyForm] CHECK CONSTRAINT [FK_ApplyForm_Group_GroupId]
GO
ALTER TABLE [dbo].[ApplyForm_Ads]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Ads_Ads_AdsId] FOREIGN KEY([AdsId])
REFERENCES [dbo].[Ads] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplyForm_Ads] CHECK CONSTRAINT [FK_ApplyForm_Ads_Ads_AdsId]
GO
ALTER TABLE [dbo].[ApplyForm_Ads]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Ads_ApplyForm_ApplyFormId] FOREIGN KEY([ApplyFormId])
REFERENCES [dbo].[ApplyForm] ([Id])
GO
ALTER TABLE [dbo].[ApplyForm_Ads] CHECK CONSTRAINT [FK_ApplyForm_Ads_ApplyForm_ApplyFormId]
GO
ALTER TABLE [dbo].[ApplyForm_App]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_App_ApplyForm_ApplyFormId] FOREIGN KEY([ApplyFormId])
REFERENCES [dbo].[ApplyForm] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplyForm_App] CHECK CONSTRAINT [FK_ApplyForm_App_ApplyForm_ApplyFormId]
GO
ALTER TABLE [dbo].[ApplyForm_App]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_App_Software_SoftwareId] FOREIGN KEY([SoftwareId])
REFERENCES [dbo].[Software] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplyForm_App] CHECK CONSTRAINT [FK_ApplyForm_App_Software_SoftwareId]
GO
ALTER TABLE [dbo].[ApplyForm_Coupon]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Coupon_ApplyForm_ApplyFormId] FOREIGN KEY([ApplyFormId])
REFERENCES [dbo].[ApplyForm] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplyForm_Coupon] CHECK CONSTRAINT [FK_ApplyForm_Coupon_ApplyForm_ApplyFormId]
GO
ALTER TABLE [dbo].[ApplyForm_Coupon]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Coupon_Coupon_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Coupon] ([Id])
GO
ALTER TABLE [dbo].[ApplyForm_Coupon] CHECK CONSTRAINT [FK_ApplyForm_Coupon_Coupon_CouponId]
GO
ALTER TABLE [dbo].[ApplyForm_Device]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Device_ApplyForm_ApplyFormId] FOREIGN KEY([ApplyFormId])
REFERENCES [dbo].[ApplyForm] ([Id])
GO
ALTER TABLE [dbo].[ApplyForm_Device] CHECK CONSTRAINT [FK_ApplyForm_Device_ApplyForm_ApplyFormId]
GO
ALTER TABLE [dbo].[ApplyForm_Device]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Device_Device_DeviceId] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
GO
ALTER TABLE [dbo].[ApplyForm_Device] CHECK CONSTRAINT [FK_ApplyForm_Device_Device_DeviceId]
GO
ALTER TABLE [dbo].[ApplyForm_Product]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Product_ApplyForm_ApplyFormId] FOREIGN KEY([ApplyFormId])
REFERENCES [dbo].[ApplyForm] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplyForm_Product] CHECK CONSTRAINT [FK_ApplyForm_Product_ApplyForm_ApplyFormId]
GO
ALTER TABLE [dbo].[ApplyForm_Product]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Product_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ApplyForm_Product] CHECK CONSTRAINT [FK_ApplyForm_Product_Product_ProductId]
GO
ALTER TABLE [dbo].[ApplyForm_Sku]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Sku_ApplyForm_ApplyFormId] FOREIGN KEY([ApplyFormId])
REFERENCES [dbo].[ApplyForm] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplyForm_Sku] CHECK CONSTRAINT [FK_ApplyForm_Sku_ApplyForm_ApplyFormId]
GO
ALTER TABLE [dbo].[ApplyForm_Sku]  WITH CHECK ADD  CONSTRAINT [FK_ApplyForm_Sku_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[ApplyForm_Sku] CHECK CONSTRAINT [FK_ApplyForm_Sku_Sku_SkuId]
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Group_GroupId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BehaviorRecord]  WITH CHECK ADD  CONSTRAINT [FK_BehaviorRecord_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BehaviorRecord] CHECK CONSTRAINT [FK_BehaviorRecord_Group_GroupId]
GO
ALTER TABLE [dbo].[Building]  WITH CHECK ADD  CONSTRAINT [FK_Building_Position_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Building] CHECK CONSTRAINT [FK_Building_Position_PositionId]
GO
ALTER TABLE [dbo].[Coupon]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Coupon] CHECK CONSTRAINT [FK_Coupon_Group_GroupId]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_DeviceType_DeviceTypeId] FOREIGN KEY([DeviceTypeId])
REFERENCES [dbo].[DeviceType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_DeviceType_DeviceTypeId]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_Group_GroupId]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_Room_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_Room_RoomId]
GO
ALTER TABLE [dbo].[Device_DeviceCategory]  WITH CHECK ADD  CONSTRAINT [FK_Device_DeviceCategory_Device_DeviceId] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device_DeviceCategory] CHECK CONSTRAINT [FK_Device_DeviceCategory_Device_DeviceId]
GO
ALTER TABLE [dbo].[Device_DeviceCategory]  WITH CHECK ADD  CONSTRAINT [FK_Device_DeviceCategory_DeviceCategory_DeviceCategoryId] FOREIGN KEY([DeviceCategoryId])
REFERENCES [dbo].[DeviceCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Device_DeviceCategory] CHECK CONSTRAINT [FK_Device_DeviceCategory_DeviceCategory_DeviceCategoryId]
GO
ALTER TABLE [dbo].[DeviceAds]  WITH CHECK ADD  CONSTRAINT [FK_DeviceAds_Ads_AdsId] FOREIGN KEY([AdsId])
REFERENCES [dbo].[Ads] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceAds] CHECK CONSTRAINT [FK_DeviceAds_Ads_AdsId]
GO
ALTER TABLE [dbo].[DeviceAds]  WITH CHECK ADD  CONSTRAINT [FK_DeviceAds_Device_DeviceId] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
GO
ALTER TABLE [dbo].[DeviceAds] CHECK CONSTRAINT [FK_DeviceAds_Device_DeviceId]
GO
ALTER TABLE [dbo].[DeviceCategory]  WITH CHECK ADD  CONSTRAINT [FK_DeviceCategory_Device_DeviceId] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
GO
ALTER TABLE [dbo].[DeviceCategory] CHECK CONSTRAINT [FK_DeviceCategory_Device_DeviceId]
GO
ALTER TABLE [dbo].[DeviceCategory]  WITH CHECK ADD  CONSTRAINT [FK_DeviceCategory_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[DeviceCategory] CHECK CONSTRAINT [FK_DeviceCategory_Group_GroupId]
GO
ALTER TABLE [dbo].[DeviceCoupon]  WITH CHECK ADD  CONSTRAINT [FK_DeviceCoupon_Coupon_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Coupon] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceCoupon] CHECK CONSTRAINT [FK_DeviceCoupon_Coupon_CouponId]
GO
ALTER TABLE [dbo].[DeviceCoupon]  WITH CHECK ADD  CONSTRAINT [FK_DeviceCoupon_Device_DeviceID] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([Id])
GO
ALTER TABLE [dbo].[DeviceCoupon] CHECK CONSTRAINT [FK_DeviceCoupon_Device_DeviceID]
GO
ALTER TABLE [dbo].[DevicePeripheral]  WITH CHECK ADD  CONSTRAINT [FK_DevicePeripheral_Device_DeviceID] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DevicePeripheral] CHECK CONSTRAINT [FK_DevicePeripheral_Device_DeviceID]
GO
ALTER TABLE [dbo].[DevicePeripheral]  WITH CHECK ADD  CONSTRAINT [FK_DevicePeripheral_Peripheral_PeripheralId] FOREIGN KEY([PeripheralId])
REFERENCES [dbo].[Peripheral] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DevicePeripheral] CHECK CONSTRAINT [FK_DevicePeripheral_Peripheral_PeripheralId]
GO
ALTER TABLE [dbo].[DeviceProduct]  WITH CHECK ADD  CONSTRAINT [FK_DeviceProduct_Device_DeviceID] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceProduct] CHECK CONSTRAINT [FK_DeviceProduct_Device_DeviceID]
GO
ALTER TABLE [dbo].[DeviceProduct]  WITH CHECK ADD  CONSTRAINT [FK_DeviceProduct_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[DeviceProduct] CHECK CONSTRAINT [FK_DeviceProduct_Product_ProductId]
GO
ALTER TABLE [dbo].[DeviceSku]  WITH CHECK ADD  CONSTRAINT [FK_DeviceSku_Device_DeviceID] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceSku] CHECK CONSTRAINT [FK_DeviceSku_Device_DeviceID]
GO
ALTER TABLE [dbo].[DeviceSku]  WITH CHECK ADD  CONSTRAINT [FK_DeviceSku_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[DeviceSku] CHECK CONSTRAINT [FK_DeviceSku_Sku_SkuId]
GO
ALTER TABLE [dbo].[DeviceSoftware]  WITH CHECK ADD  CONSTRAINT [FK_DeviceSoftware_Device_DeviceId] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[Device] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceSoftware] CHECK CONSTRAINT [FK_DeviceSoftware_Device_DeviceId]
GO
ALTER TABLE [dbo].[DeviceSoftware]  WITH CHECK ADD  CONSTRAINT [FK_DeviceSoftware_Software_SoftwareId] FOREIGN KEY([SoftwareId])
REFERENCES [dbo].[Software] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceSoftware] CHECK CONSTRAINT [FK_DeviceSoftware_Software_SoftwareId]
GO
ALTER TABLE [dbo].[DeviceTag]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTag_Device_DeviceID] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceTag] CHECK CONSTRAINT [FK_DeviceTag_Device_DeviceID]
GO
ALTER TABLE [dbo].[DeviceTag]  WITH CHECK ADD  CONSTRAINT [FK_DeviceTag_Tag_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeviceTag] CHECK CONSTRAINT [FK_DeviceTag_Tag_TagId]
GO
ALTER TABLE [dbo].[ExternalAccessTokenInfo]  WITH CHECK ADD  CONSTRAINT [FK_ExternalAccessTokenInfo_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExternalAccessTokenInfo] CHECK CONSTRAINT [FK_ExternalAccessTokenInfo_Group_GroupId]
GO
ALTER TABLE [dbo].[Floor]  WITH CHECK ADD  CONSTRAINT [FK_Floor_Building_BuildingId] FOREIGN KEY([BuildingId])
REFERENCES [dbo].[Building] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Floor] CHECK CONSTRAINT [FK_Floor_Building_BuildingId]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Group_ParentGroupId] FOREIGN KEY([ParentGroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Group_ParentGroupId]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Position_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Position_PositionId]
GO
ALTER TABLE [dbo].[GroupClaims]  WITH CHECK ADD  CONSTRAINT [FK_GroupClaims_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupClaims] CHECK CONSTRAINT [FK_GroupClaims_Group_GroupId]
GO
ALTER TABLE [dbo].[GroupSoftware]  WITH CHECK ADD  CONSTRAINT [FK_GroupSoftware_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupSoftware] CHECK CONSTRAINT [FK_GroupSoftware_Group_GroupId]
GO
ALTER TABLE [dbo].[GroupSoftware]  WITH CHECK ADD  CONSTRAINT [FK_GroupSoftware_Software_SoftwareId] FOREIGN KEY([SoftwareId])
REFERENCES [dbo].[Software] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupSoftware] CHECK CONSTRAINT [FK_GroupSoftware_Software_SoftwareId]
GO
ALTER TABLE [dbo].[LikeInfo]  WITH CHECK ADD  CONSTRAINT [FK_LikeInfo_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LikeInfo] CHECK CONSTRAINT [FK_LikeInfo_Group_GroupId]
GO
ALTER TABLE [dbo].[LikeItem]  WITH CHECK ADD  CONSTRAINT [FK_LikeItem_LikeInfo_LikeInfoId] FOREIGN KEY([LikeInfoId])
REFERENCES [dbo].[LikeInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LikeItem] CHECK CONSTRAINT [FK_LikeItem_LikeInfo_LikeInfoId]
GO
ALTER TABLE [dbo].[LikeItem]  WITH CHECK ADD  CONSTRAINT [FK_LikeItem_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[LikeItem] CHECK CONSTRAINT [FK_LikeItem_Product_ProductId]
GO
ALTER TABLE [dbo].[LikeItem]  WITH CHECK ADD  CONSTRAINT [FK_LikeItem_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[LikeItem] CHECK CONSTRAINT [FK_LikeItem_Sku_SkuId]
GO
ALTER TABLE [dbo].[MatchInfo]  WITH CHECK ADD  CONSTRAINT [FK_MatchInfo_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MatchInfo] CHECK CONSTRAINT [FK_MatchInfo_Group_GroupId]
GO
ALTER TABLE [dbo].[MatchItem]  WITH CHECK ADD  CONSTRAINT [FK_MatchItem_MatchInfo_MatchInfoId] FOREIGN KEY([MatchInfoId])
REFERENCES [dbo].[MatchInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MatchItem] CHECK CONSTRAINT [FK_MatchItem_MatchInfo_MatchInfoId]
GO
ALTER TABLE [dbo].[MatchItem]  WITH CHECK ADD  CONSTRAINT [FK_MatchItem_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[MatchItem] CHECK CONSTRAINT [FK_MatchItem_Product_ProductId]
GO
ALTER TABLE [dbo].[MatchItem]  WITH CHECK ADD  CONSTRAINT [FK_MatchItem_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[MatchItem] CHECK CONSTRAINT [FK_MatchItem_Sku_SkuId]
GO
ALTER TABLE [dbo].[OnlineStoreProfile]  WITH CHECK ADD  CONSTRAINT [FK_OnlineStoreProfile_Staff_StaffId] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OnlineStoreProfile] CHECK CONSTRAINT [FK_OnlineStoreProfile_Staff_StaffId]
GO
ALTER TABLE [dbo].[ParentGroupAds]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupAds_Ads_AdsId] FOREIGN KEY([AdsId])
REFERENCES [dbo].[Ads] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentGroupAds] CHECK CONSTRAINT [FK_ParentGroupAds_Ads_AdsId]
GO
ALTER TABLE [dbo].[ParentGroupAds]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupAds_Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[ParentGroupAds] CHECK CONSTRAINT [FK_ParentGroupAds_Group_GroupID]
GO
ALTER TABLE [dbo].[ParentGroupCoupon]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupCoupon_Coupon_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Coupon] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentGroupCoupon] CHECK CONSTRAINT [FK_ParentGroupCoupon_Coupon_CouponId]
GO
ALTER TABLE [dbo].[ParentGroupCoupon]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupCoupon_Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[ParentGroupCoupon] CHECK CONSTRAINT [FK_ParentGroupCoupon_Group_GroupID]
GO
ALTER TABLE [dbo].[ParentGroupProduct]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupProduct_Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentGroupProduct] CHECK CONSTRAINT [FK_ParentGroupProduct_Group_GroupID]
GO
ALTER TABLE [dbo].[ParentGroupProduct]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupProduct_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ParentGroupProduct] CHECK CONSTRAINT [FK_ParentGroupProduct_Product_ProductId]
GO
ALTER TABLE [dbo].[ParentGroupSku]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupSku_Group_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentGroupSku] CHECK CONSTRAINT [FK_ParentGroupSku_Group_GroupID]
GO
ALTER TABLE [dbo].[ParentGroupSku]  WITH CHECK ADD  CONSTRAINT [FK_ParentGroupSku_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[ParentGroupSku] CHECK CONSTRAINT [FK_ParentGroupSku_Sku_SkuId]
GO
ALTER TABLE [dbo].[Product_DecideImage]  WITH CHECK ADD  CONSTRAINT [FK_Product_DecideImage_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_DecideImage] CHECK CONSTRAINT [FK_Product_DecideImage_Product_ProductId]
GO
ALTER TABLE [dbo].[Product_DecideImage]  WITH CHECK ADD  CONSTRAINT [FK_Product_DecideImage_PropertyValue_PropertyValueId] FOREIGN KEY([PropertyValueId])
REFERENCES [dbo].[PropertyValue] ([Id])
GO
ALTER TABLE [dbo].[Product_DecideImage] CHECK CONSTRAINT [FK_Product_DecideImage_PropertyValue_PropertyValueId]
GO
ALTER TABLE [dbo].[Product_ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_ProductCategory] CHECK CONSTRAINT [FK_Product_ProductCategory_Product_ProductId]
GO
ALTER TABLE [dbo].[Product_ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory_ProductCategory_ProductCategoryId] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product_ProductCategory] CHECK CONSTRAINT [FK_Product_ProductCategory_ProductCategory_ProductCategoryId]
GO
ALTER TABLE [dbo].[Product_PropertyValue]  WITH CHECK ADD  CONSTRAINT [FK_Product_PropertyValue_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product_PropertyValue] CHECK CONSTRAINT [FK_Product_PropertyValue_Product_ProductId]
GO
ALTER TABLE [dbo].[Product_PropertyValue]  WITH CHECK ADD  CONSTRAINT [FK_Product_PropertyValue_PropertyValue_PropertyValueId] FOREIGN KEY([PropertyValueId])
REFERENCES [dbo].[PropertyValue] ([Id])
GO
ALTER TABLE [dbo].[Product_PropertyValue] CHECK CONSTRAINT [FK_Product_PropertyValue_PropertyValue_PropertyValueId]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Group_GroupId]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_ProductCategory_ParentCategoryId] FOREIGN KEY([ParentCategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_ProductCategory_ParentCategoryId]
GO
ALTER TABLE [dbo].[ProductComments]  WITH CHECK ADD  CONSTRAINT [FK_ProductComments_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductComments] CHECK CONSTRAINT [FK_ProductComments_Group_GroupId]
GO
ALTER TABLE [dbo].[ProductComments]  WITH CHECK ADD  CONSTRAINT [FK_ProductComments_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductComments] CHECK CONSTRAINT [FK_ProductComments_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductOnlineStoreInfo]  WITH CHECK ADD  CONSTRAINT [FK_ProductOnlineStoreInfo_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductOnlineStoreInfo] CHECK CONSTRAINT [FK_ProductOnlineStoreInfo_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductPromotion]  WITH CHECK ADD  CONSTRAINT [FK_ProductPromotion_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductPromotion] CHECK CONSTRAINT [FK_ProductPromotion_Group_GroupId]
GO
ALTER TABLE [dbo].[ProductPromotion]  WITH CHECK ADD  CONSTRAINT [FK_ProductPromotion_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductPromotion] CHECK CONSTRAINT [FK_ProductPromotion_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductPromotion]  WITH CHECK ADD  CONSTRAINT [FK_ProductPromotion_Promotion_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[ProductPromotion] CHECK CONSTRAINT [FK_ProductPromotion_Promotion_PromotionId]
GO
ALTER TABLE [dbo].[ProductResourceFile]  WITH CHECK ADD  CONSTRAINT [FK_ProductResourceFile_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductResourceFile] CHECK CONSTRAINT [FK_ProductResourceFile_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductResourceFile]  WITH CHECK ADD  CONSTRAINT [FK_ProductResourceFile_ResourceFile_ResourceItemId] FOREIGN KEY([ResourceItemId])
REFERENCES [dbo].[ResourceFile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductResourceFile] CHECK CONSTRAINT [FK_ProductResourceFile_ResourceFile_ResourceItemId]
GO
ALTER TABLE [dbo].[ProductResourceFile]  WITH CHECK ADD  CONSTRAINT [FK_ProductResourceFile_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[ProductResourceFile] CHECK CONSTRAINT [FK_ProductResourceFile_Sku_SkuId]
GO
ALTER TABLE [dbo].[ProductTag]  WITH CHECK ADD  CONSTRAINT [FK_ProductTag_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTag] CHECK CONSTRAINT [FK_ProductTag_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductTag]  WITH CHECK ADD  CONSTRAINT [FK_ProductTag_Tag_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTag] CHECK CONSTRAINT [FK_ProductTag_Tag_TagId]
GO
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [FK_Program_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [FK_Program_Group_GroupId]
GO
ALTER TABLE [dbo].[Promotion]  WITH CHECK ADD  CONSTRAINT [FK_Promotion_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Promotion] CHECK CONSTRAINT [FK_Promotion_Group_GroupId]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Group_GroupId]
GO
ALTER TABLE [dbo].[PropertyValue]  WITH CHECK ADD  CONSTRAINT [FK_PropertyValue_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PropertyValue] CHECK CONSTRAINT [FK_PropertyValue_Group_GroupId]
GO
ALTER TABLE [dbo].[PropertyValue]  WITH CHECK ADD  CONSTRAINT [FK_PropertyValue_Property_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Property] ([Id])
GO
ALTER TABLE [dbo].[PropertyValue] CHECK CONSTRAINT [FK_PropertyValue_Property_PropertyId]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Floor_FloorId] FOREIGN KEY([FloorId])
REFERENCES [dbo].[Floor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Floor_FloorId]
GO
ALTER TABLE [dbo].[Sku]  WITH CHECK ADD  CONSTRAINT [FK_Sku_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sku] CHECK CONSTRAINT [FK_Sku_Product_ProductId]
GO
ALTER TABLE [dbo].[Sku_PropertyValue]  WITH CHECK ADD  CONSTRAINT [FK_Sku_PropertyValue_PropertyValue_PropertyValueId] FOREIGN KEY([PropertyValueId])
REFERENCES [dbo].[PropertyValue] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sku_PropertyValue] CHECK CONSTRAINT [FK_Sku_PropertyValue_PropertyValue_PropertyValueId]
GO
ALTER TABLE [dbo].[Sku_PropertyValue]  WITH CHECK ADD  CONSTRAINT [FK_Sku_PropertyValue_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[Sku_PropertyValue] CHECK CONSTRAINT [FK_Sku_PropertyValue_Sku_SkuId]
GO
ALTER TABLE [dbo].[SkuOnlineStoreInfo]  WITH CHECK ADD  CONSTRAINT [FK_SkuOnlineStoreInfo_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkuOnlineStoreInfo] CHECK CONSTRAINT [FK_SkuOnlineStoreInfo_Sku_SkuId]
GO
ALTER TABLE [dbo].[SkuPromotion]  WITH CHECK ADD  CONSTRAINT [FK_SkuPromotion_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkuPromotion] CHECK CONSTRAINT [FK_SkuPromotion_Group_GroupId]
GO
ALTER TABLE [dbo].[SkuPromotion]  WITH CHECK ADD  CONSTRAINT [FK_SkuPromotion_ProductPromotion_ProductPromotionId] FOREIGN KEY([ProductPromotionId])
REFERENCES [dbo].[ProductPromotion] ([Id])
GO
ALTER TABLE [dbo].[SkuPromotion] CHECK CONSTRAINT [FK_SkuPromotion_ProductPromotion_ProductPromotionId]
GO
ALTER TABLE [dbo].[SkuPromotion]  WITH CHECK ADD  CONSTRAINT [FK_SkuPromotion_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
GO
ALTER TABLE [dbo].[SkuPromotion] CHECK CONSTRAINT [FK_SkuPromotion_Sku_SkuId]
GO
ALTER TABLE [dbo].[SkuResourceFile]  WITH CHECK ADD  CONSTRAINT [FK_SkuResourceFile_ResourceFile_ResourceItemId] FOREIGN KEY([ResourceItemId])
REFERENCES [dbo].[ResourceFile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkuResourceFile] CHECK CONSTRAINT [FK_SkuResourceFile_ResourceFile_ResourceItemId]
GO
ALTER TABLE [dbo].[SkuResourceFile]  WITH CHECK ADD  CONSTRAINT [FK_SkuResourceFile_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkuResourceFile] CHECK CONSTRAINT [FK_SkuResourceFile_Sku_SkuId]
GO
ALTER TABLE [dbo].[SkuTag]  WITH CHECK ADD  CONSTRAINT [FK_SkuTag_Sku_SkuId] FOREIGN KEY([SkuId])
REFERENCES [dbo].[Sku] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkuTag] CHECK CONSTRAINT [FK_SkuTag_Sku_SkuId]
GO
ALTER TABLE [dbo].[SkuTag]  WITH CHECK ADD  CONSTRAINT [FK_SkuTag_Tag_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkuTag] CHECK CONSTRAINT [FK_SkuTag_Tag_TagId]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Group_GroupId]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_Group_GroupId]
GO
ALTER TABLE [dbo].[UserLog]  WITH CHECK ADD  CONSTRAINT [FK_UserLog_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserLog] CHECK CONSTRAINT [FK_UserLog_AspNetUsers_ApplicationUserId]
GO
/****** Object:  Trigger [dbo].[trg_Ads_update]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/11/27
-- Description:	product auditStatus changed or deleted changed
-- =============================================
CREATE TRIGGER [dbo].[trg_Ads_update]
   ON  [dbo].[Ads]
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   if UPDATE(AuditStatus) or  UPDATE(deleted)
   begin
		delete a
		from ParentGroupAds a
		inner join inserted i on a.AdsId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1

		delete a
		from DeviceAds a
		inner join inserted i on a.AdsId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1
   end

END
GO
ALTER TABLE [dbo].[Ads] ENABLE TRIGGER [trg_Ads_update]
GO
/****** Object:  Trigger [dbo].[trg_coupon_update]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/12/22
-- Description:	product auditStatus changed or deleted changed
-- =============================================
create TRIGGER [dbo].[trg_coupon_update]
   ON  [dbo].[Coupon]
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   if UPDATE(AuditStatus) or  UPDATE(deleted)
   begin
		delete a
		from ParentGroupCoupon a
		inner join inserted i on a.CouponId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1

		delete a
		from DeviceCoupon a
		inner join inserted i on a.CouponId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1
   end

END
GO
ALTER TABLE [dbo].[Coupon] ENABLE TRIGGER [trg_coupon_update]
GO
/****** Object:  Trigger [dbo].[trg_DeviceCategory_update]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/12/20
-- Description:	delete Device_DeviceCategory when DeviceCategory is deleted
-- =============================================
CREATE TRIGGER [dbo].[trg_DeviceCategory_update]
   ON  [dbo].[DeviceCategory] 
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   		delete a
		from Device_DeviceCategory a
		inner join inserted i on a.DeviceCategoryId = i.Id
		where  i.Deleted = 1

END
GO
ALTER TABLE [dbo].[DeviceCategory] ENABLE TRIGGER [trg_DeviceCategory_update]
GO
/****** Object:  Trigger [dbo].[trg_DeviceProduct_delete]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/11/30
-- Description:	when insert product need to insert sku
-- =============================================
CREATE TRIGGER [dbo].[trg_DeviceProduct_delete]
   ON  [dbo].[DeviceProduct]
   AFTER delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	delete ds
	from DeviceSku ds
	inner join deleted d on d.DeviceID = ds.DeviceID
	inner join Sku s on d.ProductId = s.ProductId
	where ds.SkuId = s.Id



END
GO
ALTER TABLE [dbo].[DeviceProduct] ENABLE TRIGGER [trg_DeviceProduct_delete]
GO
/****** Object:  Trigger [dbo].[trg_DeviceProduct_insert]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/11/30
-- Description:	when insert product need to insert sku
-- =============================================
CREATE TRIGGER [dbo].[trg_DeviceProduct_insert] 
   ON  [dbo].[DeviceProduct]
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	--insert into DeviceSku(DeviceID,SkuId)
	--select i.DeviceID, s.Id
	--from Sku s 
	--inner join inserted i on s.ProductId = i.ProductId 
	--where s.Deleted=0 and s.AuditStatus = 3
	--and not exists (select 1 from DeviceSku d where d.DeviceID= i.DeviceID and d.SkuId = s.Id)

END
GO
ALTER TABLE [dbo].[DeviceProduct] ENABLE TRIGGER [trg_DeviceProduct_insert]
GO
/****** Object:  Trigger [dbo].[trg_DeviceSku_delete]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2018/01/20
-- Description:	check when no sku in device ,should delete product
-- =============================================
CREATE TRIGGER [dbo].[trg_DeviceSku_delete] 
   ON  [dbo].[DeviceSku]
   AFTER delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    declare @count int
	declare @productId int,@deviceId int

	select @productId = p.Id,@deviceId = d.DeviceID

	from Product p 
	inner join Sku s on p.Id = s.ProductId
	inner join deleted d on d.SkuId = s.Id

	select @count = count(ds.SkuId)
	from DeviceSku ds
	inner join Sku s on s.Id = ds.SkuId 
	where s.ProductId = @productId and ds.DeviceID = @deviceId

	if @count = 0 and exists(select 1 from DeviceProduct where ProductId = @productId and DeviceID = @deviceId)
	begin
		
		delete DeviceProduct where ProductId = @productId and DeviceID = @deviceId
	end

END
GO
ALTER TABLE [dbo].[DeviceSku] ENABLE TRIGGER [trg_DeviceSku_delete]
GO
/****** Object:  Trigger [dbo].[trg_ParentGroupProduct_delete]    Script Date: 2018/01/24 15:13:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2018/01/19
-- Description:	when delete spu ,need to delete sku
-- =============================================
CREATE TRIGGER [dbo].[trg_ParentGroupProduct_delete]
   ON  [dbo].[ParentGroupProduct]
   AFTER delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    	delete ds
	from ParentGroupSku ds
	inner join Sku s on s.Id = ds.SkuId
	inner join deleted d on d.ProductId = s.ProductId

END
GO
ALTER TABLE [dbo].[ParentGroupProduct] ENABLE TRIGGER [trg_ParentGroupProduct_delete]
GO
/****** Object:  Trigger [dbo].[trg_ParentGroupProduct_insert]    Script Date: 2018/01/24 15:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/11/30
-- Description:	when insert product need to insert sku
-- =============================================
CREATE TRIGGER [dbo].[trg_ParentGroupProduct_insert] 
   ON  [dbo].[ParentGroupProduct]
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	--insert into ParentGroupSku(GroupID,SkuId)
	--select i.GroupID, s.Id
	--from Sku s 
	--inner join inserted i on s.ProductId = i.ProductId 
	--where s.Deleted=0 and s.AuditStatus = 3
	--and not exists (select 1 from ParentGroupSku d where d.GroupID= i.GroupID and d.SkuId = s.Id)

END
GO
ALTER TABLE [dbo].[ParentGroupProduct] ENABLE TRIGGER [trg_ParentGroupProduct_insert]
GO
/****** Object:  Trigger [dbo].[trg_ParentGroupSku_delete]    Script Date: 2018/01/24 15:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2018/01/20
-- Description:	check when no sku in store ,should delete product
-- =============================================
CREATE TRIGGER [dbo].[trg_ParentGroupSku_delete] 
   ON  [dbo].[ParentGroupSku]
   AFTER delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    declare @count int
	declare @productId int,@groupId int

	select @productId = s.ProductId,@groupId = d.GroupID

	from  Sku s 
	inner join deleted d on d.SkuId = s.Id

	select @count = count(pgs.SkuId)
	from ParentGroupSku pgs
	inner join Sku s on s.Id = pgs.SkuId 
	where s.ProductId = @productId and pgs.GroupID = @groupId

	if @count = 0 and exists(select 1 from ParentGroupProduct where ProductId = @productId and GroupID = @groupId)
	begin
		delete ParentGroupProduct where ProductId = @productId and GroupID = @groupId
	end

END
GO
ALTER TABLE [dbo].[ParentGroupSku] ENABLE TRIGGER [trg_ParentGroupSku_delete]
GO
/****** Object:  Trigger [dbo].[trg_product_update]    Script Date: 2018/01/24 15:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/11/27
-- Description:	product auditStatus changed or deleted changed
-- =============================================
CREATE TRIGGER [dbo].[trg_product_update]
   ON  [dbo].[Product]
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   if UPDATE(AuditStatus) or  UPDATE(deleted)
   begin
		delete a
		from ParentGroupProduct a
		inner join inserted i on a.ProductId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1

		delete a
		from DeviceProduct a
		inner join inserted i on a.ProductId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1
   end

END
GO
ALTER TABLE [dbo].[Product] ENABLE TRIGGER [trg_product_update]
GO
/****** Object:  Trigger [dbo].[trg_ProductCategory_update]    Script Date: 2018/01/24 15:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/12/20
-- Description:	when ProductCategory id deleted, delete Product_ProductCategory
-- =============================================
CREATE TRIGGER [dbo].[trg_ProductCategory_update]
   ON  [dbo].[ProductCategory] 
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   		delete a
		from Product_ProductCategory a
		inner join inserted i on a.ProductCategoryId = i.Id
		where  i.Deleted = 1

END
GO
ALTER TABLE [dbo].[ProductCategory] ENABLE TRIGGER [trg_ProductCategory_update]
GO
/****** Object:  Trigger [dbo].[trg_sku_update]    Script Date: 2018/01/24 15:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/11/27
-- Description:	product auditStatus changed or deleted changed
-- =============================================
CREATE TRIGGER [dbo].[trg_sku_update]
   ON  [dbo].[Sku]
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   if UPDATE(AuditStatus) or  UPDATE(deleted)
   begin
		delete a
		from ParentGroupSku a
		inner join inserted i on a.SkuId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1

		delete a
		from DeviceSku a
		inner join inserted i on a.SkuId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1
   end

END
GO
ALTER TABLE [dbo].[Sku] ENABLE TRIGGER [trg_sku_update]
GO
/****** Object:  Trigger [dbo].[trg_Software_update]    Script Date: 2018/01/24 15:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/11/27
-- Description:	product auditStatus changed or deleted changed
-- =============================================
CREATE TRIGGER [dbo].[trg_Software_update]
   ON  [dbo].[Software]
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   if UPDATE(AuditStatus) or  UPDATE(deleted)
   begin

		delete a
		from GroupSoftware a
		inner join inserted i on a.SoftwareId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1

		delete a
		from DeviceSoftware a
		inner join inserted i on a.SoftwareId = i.Id
		where i.AuditStatus= 1 or i.Deleted = 1

   end

END
GO
ALTER TABLE [dbo].[Software] ENABLE TRIGGER [trg_Software_update]
GO
/****** Object:  Trigger [dbo].[trg_tag_update]    Script Date: 2018/01/24 15:13:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zhu
-- Create date: 2017/12/20
-- Description:	when tag is deleted ,delete producttag,skuTag,deviceTag,adsTag
-- =============================================
CREATE TRIGGER [dbo].[trg_tag_update] 
   ON  [dbo].[Tag]
   AFTER update
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

       if  UPDATE(deleted)
   begin
		delete a
		from ProductTag a
		inner join inserted i on a.TagId = i.Id
		where  i.Deleted = 1

		delete a
		from SkuTag a
		inner join inserted i on a.TagId = i.Id
		where  i.Deleted = 1

		delete a
		from AdsTag a
		inner join inserted i on a.TagId = i.Id
		where  i.Deleted = 1

		delete a
		from DeviceTag a
		inner join inserted i on a.TagId = i.Id
		where  i.Deleted = 1
   end

END
GO
ALTER TABLE [dbo].[Tag] ENABLE TRIGGER [trg_tag_update]
GO
