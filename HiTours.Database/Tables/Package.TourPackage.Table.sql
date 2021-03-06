
CREATE TABLE [Package].[TourPackage](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageType] [tinyint] NOT NULL,
	[Prefix] [nvarchar](5) NOT NULL,
	[DealCode] [int] NOT NULL,
	[Suffix] [nchar](10) NOT NULL,
	[PackageName] [varchar](100) NOT NULL,
	[UrlTitle] [varchar](250) NOT NULL,
	[DealTypeId] [nvarchar](50) NULL,
	[PackageValidFrom] [datetime2](7) NOT NULL,
	[PackageValidTo] [datetime2](7) NOT NULL,
	[HotelId] [int] NULL,
	[IsFlightIncluded] [bit] NOT NULL,
	[PackageDescription] [nvarchar](max) NULL,
	[Quote] [nvarchar](max) NULL,
	[HighLights] [nvarchar](max) NULL,
	[Programs] [nvarchar](max) NULL,
	[HotelDescription] [nvarchar](max) NULL,
	[HotelReview] [nvarchar](max) NULL,
	[MapScript] [nvarchar](max) NULL,
	[Visitors] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TourPackage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

GO
/****** Object:  Index [IX_TourPackage_Column]    Script Date: 7/23/2018 3:16:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_TourPackage_Column] ON [Package].[TourPackage]
(
	[PackageName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackage] ADD  DEFAULT ((1)) FOR [TourPackageType]
GO
ALTER TABLE [Package].[TourPackage] ADD  DEFAULT ((0)) FOR [IsFlightIncluded]
GO
ALTER TABLE [Package].[TourPackage] ADD  CONSTRAINT [DF__TourPacka__IsAct__7DCDAAA2]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [Package].[TourPackage] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Package].[TourPackage] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackage] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackage] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackage] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0-HotelPackage;1-TourPackage' , @level0type=N'SCHEMA',@level0name=N'Package', @level1type=N'TABLE',@level1name=N'TourPackage', @level2type=N'COLUMN',@level2name=N'TourPackageType'
GO
