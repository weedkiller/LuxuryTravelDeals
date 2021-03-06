
CREATE TABLE [dbo].[CityArea](
	[CityAreaId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CityArea] [nvarchar](500) NULL,
	[CityId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_CityArea] PRIMARY KEY CLUSTERED 
(
	[CityAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
