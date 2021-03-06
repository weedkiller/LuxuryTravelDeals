
CREATE TABLE [Package].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [smallint] NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

GO
/****** Object:  Index [UNIX_State_Name]    Script Date: 7/23/2018 3:16:06 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UNIX_State_Name] ON [Package].[State]
(
	[Name] ASC,
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Package].[State] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Package].[State] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[State] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[State] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[State] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryId])
REFERENCES [Package].[Country] ([Id])
GO
ALTER TABLE [Package].[State] CHECK CONSTRAINT [FK_State_Country]
GO
