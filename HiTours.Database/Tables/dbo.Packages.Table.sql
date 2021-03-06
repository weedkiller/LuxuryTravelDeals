
CREATE TABLE [dbo].[Packages](
	[Id] [uniqueidentifier] NOT NULL,
	[Prefix] [varchar](5) NOT NULL,
	[DealCode] [int] NOT NULL,
	[Postfix] [nchar](10) NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DealTypeId] [uniqueidentifier] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NOT NULL,
	[Nights] [nvarchar](50) NOT NULL,
	[CountryId] [uniqueidentifier] NOT NULL,
	[CityId] [uniqueidentifier] NOT NULL,
	[HotelId] [uniqueidentifier] NOT NULL,
	[HotelValidityId] [uniqueidentifier] NOT NULL,
	[HotelPrice] [decimal](14, 2) NULL,
	[HighLights] [nvarchar](max) NULL,
	[Details] [nvarchar](max) NULL,
	[HotelReview] [nvarchar](max) NULL,
	[DealQuotes] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[IsExtraNight] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uc_code] UNIQUE NONCLUSTERED 
(
	[Prefix] ASC,
	[DealCode] ASC,
	[Postfix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Packages] ADD  CONSTRAINT [DF_Packages_IsExtraNight]  DEFAULT ((0)) FOR [IsExtraNight]
GO
ALTER TABLE [dbo].[Packages]  WITH CHECK ADD  CONSTRAINT [FK_Packages_Packages] FOREIGN KEY([Id])
REFERENCES [dbo].[Packages] ([Id])
GO
ALTER TABLE [dbo].[Packages] CHECK CONSTRAINT [FK_Packages_Packages]
GO
