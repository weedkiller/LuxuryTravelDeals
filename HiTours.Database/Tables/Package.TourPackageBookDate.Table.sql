
CREATE TABLE [Package].[TourPackageBookDate](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageId] [uniqueidentifier] NOT NULL,
	[BookingValidFrom] [datetime2](7) NOT NULL,
	[BookingValidTo] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TourPackageBookDate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackageBookDate] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackageBookDate] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackageBookDate] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackageBookDate] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[TourPackageBookDate]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageBookDate_TourPackage] FOREIGN KEY([TourPackageId])
REFERENCES [Package].[TourPackage] ([Id])
GO
ALTER TABLE [Package].[TourPackageBookDate] CHECK CONSTRAINT [FK_TourPackageBookDate_TourPackage]
GO
