
CREATE TABLE [dbo].[AccommodationGroup](
	[AccommodationGroupId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[WebsiteURL] [nvarchar](200) NULL,
	[ReservationAddress] [nvarchar](max) NULL,
	[ReservationCityID] [uniqueidentifier] NULL,
	[GITContactPerson] [nvarchar](200) NULL,
	[GITAnswerBackNumber] [nvarchar](200) NULL,
	[GITEmailId] [nvarchar](200) NULL,
	[GITPhoneNumber] [nvarchar](200) NULL,
	[GITTelex] [nvarchar](200) NULL,
	[GITFaxNumber] [nvarchar](200) NULL,
	[FITContactPerson] [nvarchar](200) NULL,
	[FITAnswerBackNumber] [nvarchar](200) NULL,
	[FITTelex] [nvarchar](200) NULL,
	[FITEmailId] [nvarchar](200) NULL,
	[FITPhoneNumber] [nvarchar](200) NULL,
	[FITFaxNumber] [nvarchar](200) NULL,
	[SalesAddress] [nvarchar](max) NULL,
	[SalesCityID] [uniqueidentifier] NULL,
	[SalesContactPerson] [nvarchar](200) NULL,
	[SalesAnswerBackNumber] [nvarchar](200) NULL,
	[SalesTelex] [nvarchar](200) NULL,
	[SalesEmailId] [nvarchar](200) NULL,
	[SalesPhoneNumber] [nvarchar](200) NULL,
	[SalesFaxNumber] [nvarchar](200) NULL,
 CONSTRAINT [PK_AccommodationGroup] PRIMARY KEY CLUSTERED 
(
	[AccommodationGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
