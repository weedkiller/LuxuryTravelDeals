
CREATE TABLE [dbo].[SpecificPrice](
	[SpecificPriceId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PackageId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecificPriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
