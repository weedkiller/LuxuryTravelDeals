
CREATE TABLE [dbo].[RoomType](
	[RoomTypeId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Code] [nvarchar](50) NULL,
	[RoomType] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[RoomType] ADD  CONSTRAINT [DF_RoomType_RoomTypeId]  DEFAULT (newid()) FOR [RoomTypeId]
GO
