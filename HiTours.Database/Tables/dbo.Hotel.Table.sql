
CREATE TABLE [dbo].[Hotel](
	[HotelId] [uniqueidentifier] NOT NULL,
	[AccommodationGroupId] [uniqueidentifier] NULL,
	[SalesManager] [nvarchar](150) NULL,
	[SalesOfficeManager] [nvarchar](150) NULL,
	[Address] [nvarchar](500) NULL,
	[SalesOfficeAddress] [nvarchar](500) NULL,
	[PinCode] [nvarchar](50) NULL,
	[Website] [nvarchar](150) NULL,
	[AddDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[HotelStarRatingId] [uniqueidentifier] NULL,
	[BuildingType] [nvarchar](150) NULL,
	[HotelBuiltDate] [datetime] NULL,
	[RenovatedOn] [datetime] NULL,
	[Annexe] [bit] NULL,
	[Earliestcheckintime] [nvarchar](100) NULL,
	[Receptionlanguages] [nvarchar](100) NULL,
	[LobbySize] [nvarchar](50) NULL,
	[NoofLifts] [nvarchar](50) NULL,
	[NoofFloors] [nvarchar](50) NULL,
	[NoofIndoorPools] [nvarchar](50) NULL,
	[NoofOutdoorpools] [nvarchar](50) NULL,
	[BaggageHandlingProvided] [nvarchar](200) NULL,
	[BaggageHandleFrom] [datetime] NULL,
	[BaggageHandleTo] [datetime] NULL,
	[TotalNoofRooms] [nvarchar](50) NULL,
	[DisabledRooms] [nvarchar](50) NULL,
	[NoSmokingRooms] [nvarchar](50) NULL,
	[EarlyBreakFastFrom] [datetime] NULL,
	[ServedIn] [nvarchar](150) NULL,
	[BreakfastOpen] [nvarchar](50) NULL,
	[BreakfastClose] [nvarchar](50) NULL,
	[LunchOpen] [nvarchar](50) NULL,
	[LunchClose] [nvarchar](50) NULL,
	[DinnerOpen] [nvarchar](50) NULL,
	[DinnerClose] [nvarchar](50) NULL,
	[SeperateGroupDiningRoom] [bit] NULL,
	[NoofConferenceRoom] [nvarchar](50) NULL,
	[Voltage] [nvarchar](50) NULL,
	[RoomService] [nvarchar](100) NULL,
	[RoomServiceOpen] [datetime] NULL,
	[RoomServiceClose] [datetime] NULL,
	[PaymentCondition] [nvarchar](50) NULL,
	[Onarrival] [nvarchar](50) NULL,
	[Advance] [nvarchar](50) NULL,
	[Credit] [nvarchar](50) NULL,
	[Allotment] [nvarchar](50) NULL,
	[CutOffDays] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[HotelImage] [image] NULL,
	[BeneficiaryAccountName] [nvarchar](250) NULL,
	[AccountNo] [nvarchar](50) NULL,
	[BankName] [nvarchar](150) NULL,
	[IFSCCode] [nvarchar](50) NULL,
	[PayableAt] [nvarchar](100) NULL,
	[BranchAddress] [nvarchar](250) NULL,
	[Remarks] [nvarchar](250) NULL,
	[LedgerName] [nvarchar](150) NULL,
	[HotelRating] [smallint] NULL,
	[HotelClass] [smallint] NULL,
	[AddressLine1] [nvarchar](500) NULL,
	[AddressLine2] [nvarchar](500) NULL,
	[CityAreaId] [uniqueidentifier] NULL,
	[PaymentMode] [nvarchar](20) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF_Hotel_NoofLifts]  DEFAULT ((0)) FOR [NoofLifts]
GO
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF_Hotel_NoofFloors]  DEFAULT ((0)) FOR [NoofFloors]
GO
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF_Hotel_TotalNoofRooms]  DEFAULT ((0)) FOR [TotalNoofRooms]
GO
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF_Hotel_DisabledRooms]  DEFAULT ((0)) FOR [DisabledRooms]
GO
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF_Hotel_NoSmokingRooms]  DEFAULT ((0)) FOR [NoSmokingRooms]
GO
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF_Hotel_NoofConferenceRoom]  DEFAULT ((0)) FOR [NoofConferenceRoom]
GO
