
CREATE TABLE [dbo].[Country](
	[CountryId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CountryName] [nvarchar](200) NULL,
	[Currency] [nvarchar](100) NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CountryId]  DEFAULT (newid()) FOR [CountryId]
GO
