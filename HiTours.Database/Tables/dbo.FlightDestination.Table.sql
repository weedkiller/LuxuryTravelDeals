
CREATE TABLE [dbo].[FlightDestination](
	[RowNo] [int] IDENTITY(1,1) NOT NULL,
	[CityCode] [varchar](10) NULL,
	[CityName] [varchar](150) NULL,
	[CountryCode] [varchar](10) NULL,
	[CountryName] [varchar](150) NULL,
	[ShortDetail] [varchar](500) NULL,
	[Description] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
