
CREATE TABLE [dbo].[Markets](
	[MarketID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[MarketName] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[SequenceNumber] [smallint] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_Msrkets] PRIMARY KEY CLUSTERED 
(
	[MarketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Markets] ADD  CONSTRAINT [DF_Markets_MarketID]  DEFAULT (newid()) FOR [MarketID]
GO
ALTER TABLE [dbo].[Markets] ADD  CONSTRAINT [DF_Markets_SequenceNumber]  DEFAULT ((0)) FOR [SequenceNumber]
GO
