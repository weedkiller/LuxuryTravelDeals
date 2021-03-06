
CREATE TABLE [dbo].[Accommodation](
	[AccommodationID] [uniqueidentifier] NOT NULL,
	[AccommodationGroupId] [uniqueidentifier] NULL,
	[HotelName] [nvarchar](100) NULL,
	[CityID] [uniqueidentifier] NULL,
	[CategoryID] [uniqueidentifier] NULL,
	[IsGroupRate] [bit] NULL,
	[IsLuxuryTaxTaken] [bit] NULL,
	[IsVATTaken] [bit] NULL,
	[IsServiceTaxTaken] [bit] NULL,
	[IsMealVATApplicaple] [bit] NULL,
	[IsServiceChargeApplicable] [bit] NULL,
	[CurrencyId] [uniqueidentifier] NULL,
	[Monday] [bit] NULL,
	[Tuesday] [bit] NULL,
	[Wednesday] [bit] NULL,
	[Thursday] [bit] NULL,
	[Friday] [bit] NULL,
	[Saterday] [bit] NULL,
	[Sunday] [bit] NULL,
	[IsRecommended] [bit] NULL,
	[LocationName] [nvarchar](500) NULL,
	[IsPreferred] [bit] NULL,
 CONSTRAINT [PK_Accommodation] PRIMARY KEY CLUSTERED 
(
	[AccommodationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accommodation] ADD  CONSTRAINT [DF_Accommodation_IsGroupRate]  DEFAULT ((0)) FOR [IsGroupRate]
GO
ALTER TABLE [dbo].[Accommodation] ADD  CONSTRAINT [DF_Accommodation_IsLuxuryTaxTaken]  DEFAULT ((0)) FOR [IsLuxuryTaxTaken]
GO
ALTER TABLE [dbo].[Accommodation] ADD  CONSTRAINT [DF_Accommodation_IsVATTaken]  DEFAULT ((0)) FOR [IsVATTaken]
GO
ALTER TABLE [dbo].[Accommodation] ADD  CONSTRAINT [DF_Accommodation_IsServiceTaxTaken]  DEFAULT ((0)) FOR [IsServiceTaxTaken]
GO
ALTER TABLE [dbo].[Accommodation] ADD  CONSTRAINT [DF_Accommodation_IsMealVATApplicaple]  DEFAULT ((0)) FOR [IsMealVATApplicaple]
GO
ALTER TABLE [dbo].[Accommodation] ADD  CONSTRAINT [DF_Accommodation_IsServiceChargeApplicable]  DEFAULT ((0)) FOR [IsServiceChargeApplicable]
GO
