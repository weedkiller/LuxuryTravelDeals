
CREATE TABLE [Package].[Country](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[RegionId] [smallint] NULL,
	[SortName] [varchar](6) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[PhoneCode] [varchar](10) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Package].[Country] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Package].[Country] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[Country] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[Country] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[Country] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [Package].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_RegionId] FOREIGN KEY([RegionId])
REFERENCES [Package].[Region] ([Id])
GO
ALTER TABLE [Package].[Country] CHECK CONSTRAINT [FK_Country_RegionId]
GO
