
CREATE TABLE [Package].[Hotel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelCategoryId] [smallint] NOT NULL,
	[CityId] [int] NULL,
	[Name] [varchar](150) NOT NULL,
	[Area] [varchar](200) NOT NULL,
	[Address] [varchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

GO
/****** Object:  Index [UNIX_Hotel_Name]    Script Date: 7/23/2018 3:16:06 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UNIX_Hotel_Name] ON [Package].[Hotel]
(
	[Name] ASC,
	[CityId] ASC,
	[Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Package].[Hotel] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Package].[Hotel] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Package].[Hotel] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[Hotel] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[Hotel] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[Hotel] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_HotelCategory] FOREIGN KEY([HotelCategoryId])
REFERENCES [Package].[HotelCategory] ([Id])
GO
ALTER TABLE [Package].[Hotel] CHECK CONSTRAINT [FK_Hotel_HotelCategory]
GO
