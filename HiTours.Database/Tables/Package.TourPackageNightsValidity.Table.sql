
CREATE TABLE [Package].[TourPackageNightsValidity](
	[Id] [uniqueidentifier] NOT NULL,
	[TourPackageNightsId] [uniqueidentifier] NOT NULL,
	[HotelRoomTypeId] [smallint] NOT NULL,
	[RateValidFrom] [datetime2](7) NOT NULL,
	[RateValidTo] [datetime2](7) NOT NULL,
	[TripleRateWeekDays] [decimal](18, 2) NULL,
	[TwinRateWeekDays] [decimal](18, 2) NULL,
	[SingleRateWeekDays] [decimal](18, 2) NULL,
	[ChildWithBedRateWeekDays] [decimal](18, 2) NULL,
	[ChildWithoutBedRateWeekDays] [decimal](18, 2) NULL,
	[TripleRateWeekend] [decimal](18, 2) NULL,
	[TwinRateWeekend] [decimal](18, 2) NULL,
	[SingleRateWeekend] [decimal](18, 2) NULL,
	[ChildWithBedRateWeekend] [decimal](18, 2) NULL,
	[ChildWithoutBedRateWeekend] [decimal](18, 2) NULL,
	[DepartCityId] [int] NOT NULL,
	[RateTypeApplied] [tinyint] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
	[RoomCapacity] [smallint] NOT NULL,
	[MaxAdult] [smallint] NOT NULL,
	[MaxChild] [smallint] NOT NULL,
	[Descriptions] [nvarchar](max) NULL,
 CONSTRAINT [PK_TourPackageNightsValidity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT ((0)) FOR [RateTypeApplied]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT ((0)) FOR [RoomCapacity]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT ((0)) FOR [MaxAdult]
GO
ALTER TABLE [Package].[TourPackageNightsValidity] ADD  DEFAULT ((0)) FOR [MaxChild]
GO
ALTER TABLE [Package].[TourPackageNightsValidity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageNightsValidity_HotelRoomType] FOREIGN KEY([HotelRoomTypeId])
REFERENCES [Package].[HotelRoomType] ([Id])
GO
ALTER TABLE [Package].[TourPackageNightsValidity] CHECK CONSTRAINT [FK_TourPackageNightsValidity_HotelRoomType]
GO
ALTER TABLE [Package].[TourPackageNightsValidity]  WITH CHECK ADD  CONSTRAINT [FK_TourPackageNightsValidity_TourPackageNights] FOREIGN KEY([TourPackageNightsId])
REFERENCES [Package].[TourPackageNights] ([Id])
GO
ALTER TABLE [Package].[TourPackageNightsValidity] CHECK CONSTRAINT [FK_TourPackageNightsValidity_TourPackageNights]
GO
