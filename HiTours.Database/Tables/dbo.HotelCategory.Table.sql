
CREATE TABLE [dbo].[HotelCategory](
	[CategoryId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
	[SequenceNumber] [smallint] NULL,
 CONSTRAINT [PK_HotelCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HotelCategory] ADD  CONSTRAINT [DF_HotelCategory_CategoryId]  DEFAULT (newid()) FOR [CategoryId]
GO
