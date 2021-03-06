
CREATE TABLE [Package].[TourPackageNights](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageId] [uniqueidentifier] NOT NULL,
	[NoOfNights] [tinyint] NOT NULL,
	[DepositAmount] [decimal](18, 2) NULL,
	[PackagePrice] [decimal](18, 2) NOT NULL,
	[PackageDiscountPrice] [decimal](18, 2) NULL,
	[IsExtraNight] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TourPackageNights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackageNights] ADD  DEFAULT ((0)) FOR [IsExtraNight]
GO
ALTER TABLE [Package].[TourPackageNights] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackageNights] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackageNights] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackageNights] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[TourPackageNights]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageNights_TourPackage] FOREIGN KEY([TourPackageId])
REFERENCES [Package].[TourPackage] ([Id])
GO
ALTER TABLE [Package].[TourPackageNights] CHECK CONSTRAINT [FK_TourPackageNights_TourPackage]
GO
