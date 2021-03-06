
CREATE TABLE [Package].[TourPackageNightsDepartCity](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageNightsId] [uniqueidentifier] NOT NULL,
	[DepartCityId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TourPackageNightsDepartCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackageNightsDepartCity] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Package].[TourPackageNightsDepartCity] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackageNightsDepartCity] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackageNightsDepartCity] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackageNightsDepartCity] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[TourPackageNightsDepartCity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageNightsDepartCity_TourPackageNights] FOREIGN KEY([TourPackageNightsId])
REFERENCES [Package].[TourPackageNights] ([Id])
GO
ALTER TABLE [Package].[TourPackageNightsDepartCity] CHECK CONSTRAINT [FK_TourPackageNightsDepartCity_TourPackageNights]
GO
