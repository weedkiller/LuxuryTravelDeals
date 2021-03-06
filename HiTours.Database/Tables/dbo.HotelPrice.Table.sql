
CREATE TABLE [dbo].[HotelPrice](
	[HotelPriceId] [uniqueidentifier] NOT NULL,
	[AccommodationID] [uniqueidentifier] NULL,
	[MarketId] [uniqueidentifier] NULL,
	[ValidityFrom] [datetime] NULL,
	[ValidityTo] [datetime] NULL,
	[RoomType] [uniqueidentifier] NULL,
	[BreakFastWT] [float] NULL,
	[LunchWT] [float] NULL,
	[DinnerWT] [float] NULL,
	[IsMealServiceTaxApplicable] [bit] NULL,
	[MealServiceTax] [float] NULL,
	[IsMealVATApplicable] [bit] NULL,
	[MealVAT] [float] NULL,
	[IsMealOtherTaxApplicable] [bit] NULL,
	[MealOtherTax] [float] NULL,
	[BreakFast] [float] NULL,
	[Lunch] [float] NULL,
	[Dinner] [float] NULL,
	[PlanType] [uniqueidentifier] NULL,
	[CalculateDiscountedBy] [bit] NULL,
	[DiscountedBy] [float] NULL,
	[CalculateServiceCharge] [bit] NULL,
	[ServiceCharge] [float] NULL,
	[SalesMarkup] [float] NULL,
	[Monday] [bit] NULL,
	[Tuesday] [bit] NULL,
	[Wednesday] [bit] NULL,
	[Thursday] [bit] NULL,
	[Friday] [bit] NULL,
	[Saterday] [bit] NULL,
	[Sunday] [bit] NULL,
	[CurrencyId] [uniqueidentifier] NULL,
	[Remarks] [nvarchar](max) NULL,
	[SequenceNumber] [smallint] NULL,
	[CalculateTAConTDS] [bit] NULL,
	[TAC] [float] NULL,
	[TDS] [float] NULL,
	[IsRateIncreaseByPer] [bit] NULL,
	[RateIncrease] [float] NULL,
	[FITDoubleRateIncrease] [float] NULL,
	[FITExtraBedRateIncrease] [float] NULL,
	[GITSingleRateIncrease] [float] NULL,
	[GITDoubleRateIncrease] [float] NULL,
	[GITExtraBedRateIncrease] [float] NULL,
	[IsRackRate] [bit] NULL,
	[BreakFastChild] [float] NULL,
	[LunchChild] [float] NULL,
	[DinnerChild] [float] NULL,
	[BreakFastChildWT] [float] NULL,
	[LunchChildWT] [float] NULL,
	[DinnerChildWT] [float] NULL,
	[MaxNoOfRoomPerDay] [int] NULL,
 CONSTRAINT [PK_HotelPrice] PRIMARY KEY CLUSTERED 
(
	[HotelPriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_BreakFastWT]  DEFAULT ((0)) FOR [BreakFastWT]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_LunchWT]  DEFAULT ((0)) FOR [LunchWT]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_DinnerWT]  DEFAULT ((0)) FOR [DinnerWT]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_MealServiceTax]  DEFAULT ((0)) FOR [MealServiceTax]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_MealVAT]  DEFAULT ((0)) FOR [MealVAT]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_BreakFast]  DEFAULT ((0)) FOR [BreakFast]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_Lunch]  DEFAULT ((0)) FOR [Lunch]
GO
ALTER TABLE [dbo].[HotelPrice] ADD  CONSTRAINT [DF_HotelPrice_Dinner]  DEFAULT ((0)) FOR [Dinner]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 For Discounted By, 0 For Service Charge.
Value is stored in DiscountedBy column.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HotelPrice', @level2type=N'COLUMN',@level2name=N'CalculateDiscountedBy'
GO
