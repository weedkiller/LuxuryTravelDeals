
CREATE TABLE [dbo].[FlightBooking](
	[RowNo] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[TboBookingId] [bigint] NULL,
	[BookingDate] [datetime] NULL,
	[Pnr] [varchar](20) NULL,
	[Origin] [varchar](75) NULL,
	[Destination] [varchar](75) NULL,
	[UserTransactionId] [bigint] NOT NULL,
	[Response] [nvarchar](max) NULL,
	[Error] [nvarchar](max) NULL,
	[Remark] [nvarchar](100) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_FlightBooking] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [CIX_FlightBooking_RowNo]    Script Date: 7/23/2018 3:15:23 PM ******/
CREATE UNIQUE CLUSTERED INDEX [CIX_FlightBooking_RowNo] ON [dbo].[FlightBooking]
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FlightBooking] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FlightBooking] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[FlightBooking]  WITH CHECK ADD  CONSTRAINT [FK_FlightBooking_UserTransaction] FOREIGN KEY([UserTransactionId])
REFERENCES [dbo].[UserTransaction] ([RowNo])
GO
ALTER TABLE [dbo].[FlightBooking] CHECK CONSTRAINT [FK_FlightBooking_UserTransaction]
GO
