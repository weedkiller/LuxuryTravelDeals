
CREATE TABLE [Package].[TourPackageImage](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageId] [uniqueidentifier] NOT NULL,
	[ImageName] [nvarchar](50) NULL,
	[ImageDescription] [nvarchar](100) NULL,
	[AltTag] [nvarchar](50) NULL,
	[SequenceNo] [smallint] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TourPackageImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackageImage] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackageImage] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackageImage] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackageImage] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[TourPackageImage]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageImage_TourPackage] FOREIGN KEY([TourPackageId])
REFERENCES [Package].[TourPackage] ([Id])
GO
ALTER TABLE [Package].[TourPackageImage] CHECK CONSTRAINT [FK_TourPackageImage_TourPackage]
GO
