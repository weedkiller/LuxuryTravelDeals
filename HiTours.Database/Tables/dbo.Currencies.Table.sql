
CREATE TABLE [dbo].[Currencies](
	[CurrencyId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CurrencyName] [nvarchar](100) NULL,
	[CurrencyCode] [nvarchar](50) NULL,
	[CurrencySign] [nvarchar](50) NULL,
	[ExchangeRate] [float] NULL,
	[SecurityMargin] [float] NULL,
	[ApplySecurityMargin] [bit] NULL,
	[SecurityMarginForOneMonth] [float] NULL,
	[SecurityMarginAfterOneMonth] [float] NULL,
	[EffectiveExchangeRateForOneMonth] [float] NULL,
	[EffectiveExchangeRateForAfterOneMonth] [float] NULL,
	[CurrencyDays] [int] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Currencies] ADD  CONSTRAINT [DF_Currencies_CurrencyId]  DEFAULT (newid()) FOR [CurrencyId]
GO
