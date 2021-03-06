
CREATE TABLE [Package].[HotelRoomTypeDesc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NOT NULL,
	[HotelRoomTypeId] [smallint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_HotelRoomTypeDesc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Package].[HotelRoomTypeDesc] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[HotelRoomTypeDesc] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[HotelRoomTypeDesc] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[HotelRoomTypeDesc] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[HotelRoomTypeDesc]  WITH CHECK ADD  CONSTRAINT [FK_HotelRoomTypeDesc_Hotel] FOREIGN KEY([HotelId])
REFERENCES [Package].[Hotel] ([Id])
GO
ALTER TABLE [Package].[HotelRoomTypeDesc] CHECK CONSTRAINT [FK_HotelRoomTypeDesc_Hotel]
GO
ALTER TABLE [Package].[HotelRoomTypeDesc]  WITH CHECK ADD  CONSTRAINT [FK_HotelRoomTypeDesc_HotelRoomType] FOREIGN KEY([HotelRoomTypeId])
REFERENCES [Package].[HotelRoomType] ([Id])
GO
ALTER TABLE [Package].[HotelRoomTypeDesc] CHECK CONSTRAINT [FK_HotelRoomTypeDesc_HotelRoomType]
GO
