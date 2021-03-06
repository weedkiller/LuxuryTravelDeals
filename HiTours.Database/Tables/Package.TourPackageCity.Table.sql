
CREATE TABLE [Package].[TourPackageCity](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageId] [uniqueidentifier] NOT NULL,
	[RegionId] [smallint] NOT NULL,
	[CountryId] [smallint] NOT NULL,
	[StateId] [int] NULL,
	[CityId] [int] NOT NULL,
	[CityDescription] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TourPackageCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackageCity] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackageCity] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackageCity] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackageCity] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[TourPackageCity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageCity_CityId] FOREIGN KEY([CityId])
REFERENCES [Package].[City] ([Id])
GO
ALTER TABLE [Package].[TourPackageCity] CHECK CONSTRAINT [FK_TourPackageCity_CityId]
GO
ALTER TABLE [Package].[TourPackageCity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageCity_CountryId] FOREIGN KEY([CountryId])
REFERENCES [Package].[Country] ([Id])
GO
ALTER TABLE [Package].[TourPackageCity] CHECK CONSTRAINT [FK_TourPackageCity_CountryId]
GO
ALTER TABLE [Package].[TourPackageCity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageCity_RegionId] FOREIGN KEY([RegionId])
REFERENCES [Package].[Region] ([Id])
GO
ALTER TABLE [Package].[TourPackageCity] CHECK CONSTRAINT [FK_TourPackageCity_RegionId]
GO
ALTER TABLE [Package].[TourPackageCity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageCity_StateId] FOREIGN KEY([StateId])
REFERENCES [Package].[State] ([Id])
GO
ALTER TABLE [Package].[TourPackageCity] CHECK CONSTRAINT [FK_TourPackageCity_StateId]
GO
ALTER TABLE [Package].[TourPackageCity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageCity_TourPackage] FOREIGN KEY([TourPackageId])
REFERENCES [Package].[TourPackage] ([Id])
GO
ALTER TABLE [Package].[TourPackageCity] CHECK CONSTRAINT [FK_TourPackageCity_TourPackage]
GO
