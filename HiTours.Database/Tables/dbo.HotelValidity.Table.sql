
CREATE TABLE [dbo].[HotelValidity](
	[Id] [uniqueidentifier] NOT NULL,
	[HotelId] [uniqueidentifier] NOT NULL,
	[ValidityDateFrom] [datetime] NOT NULL,
	[ValidityDateTo] [datetime] NOT NULL,
 CONSTRAINT [PK_HotelValidity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HotelValidity] ADD  CONSTRAINT [DF_HotelValidity_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HotelValidity]  WITH CHECK ADD  CONSTRAINT [FK_HotelValidity_HotelValidity] FOREIGN KEY([Id])
REFERENCES [dbo].[HotelValidity] ([Id])
GO
ALTER TABLE [dbo].[HotelValidity] CHECK CONSTRAINT [FK_HotelValidity_HotelValidity]
GO
