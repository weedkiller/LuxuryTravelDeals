
CREATE TABLE [Package].[TourPackageTravelStyle](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageId] [uniqueidentifier] NOT NULL,
	[TravelStyleId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TourPackageTravelStyle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackageTravelStyle] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackageTravelStyle] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackageTravelStyle] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackageTravelStyle] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[TourPackageTravelStyle]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageCity_TravelStyleId] FOREIGN KEY([TravelStyleId])
REFERENCES [Package].[TravelStyle] ([Id])
GO
ALTER TABLE [Package].[TourPackageTravelStyle] CHECK CONSTRAINT [FK_TourPackageCity_TravelStyleId]
GO
ALTER TABLE [Package].[TourPackageTravelStyle]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageTravelStyle_TourPackage] FOREIGN KEY([TourPackageId])
REFERENCES [Package].[TourPackage] ([Id])
GO
ALTER TABLE [Package].[TourPackageTravelStyle] CHECK CONSTRAINT [FK_TourPackageTravelStyle_TourPackage]
GO
