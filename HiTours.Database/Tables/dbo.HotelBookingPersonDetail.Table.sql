
CREATE TABLE [dbo].[HotelBookingPersonDetail](
	[RowNo] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[HotelBookingId] [uniqueidentifier] NOT NULL,
	[RoomNo] [smallint] NOT NULL,
	[Salutation] [varchar](15) NULL,
	[FirstName] [varchar](75) NULL,
	[LastName] [varchar](75) NULL,
	[PersonType] [varchar](10) NOT NULL,
	[Age] [tinyint] NULL,
	[Gender] [varchar](11) NULL,
	[DateOfBirth] [datetime] NULL,
	[Email] [varchar](125) NULL,
	[Mobile] [varchar](10) NULL,
	[BillingAddress] [varchar](4000) NULL,
	[PinCode] [varchar](6) NULL,
	[CityCode] [varchar](6) NULL,
	[City] [varchar](150) NULL,
	[CountryCode] [varchar](6) NULL,
	[Country] [varchar](150) NULL,
	[IsCancelled] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[PassportNo] [nvarchar](100) NULL,
	[PassportExpiryDate] [datetime2](7) NULL,
 CONSTRAINT [PK__HotelBoo__3214EC06547E4B75] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [CIX_HotelBookingPersonDetail_RowNo]    Script Date: 7/23/2018 3:15:29 PM ******/
CREATE CLUSTERED INDEX [CIX_HotelBookingPersonDetail_RowNo] ON [dbo].[HotelBookingPersonDetail]
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HotelBookingPersonDetail] ADD  CONSTRAINT [DF__HotelBook__IsCan__336AA144]  DEFAULT ((0)) FOR [IsCancelled]
GO
ALTER TABLE [dbo].[HotelBookingPersonDetail] ADD  CONSTRAINT [DF__HotelBook__Creat__345EC57D]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HotelBookingPersonDetail] ADD  CONSTRAINT [DF__HotelBook__Updat__3552E9B6]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
