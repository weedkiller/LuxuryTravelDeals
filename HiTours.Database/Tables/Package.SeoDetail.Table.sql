
CREATE TABLE [Package].[SeoDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PageType] [varchar](20) NOT NULL,
	[PageId] [nvarchar](64) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[MetaDescription] [nvarchar](500) NOT NULL,
	[MetaKeyword] [nvarchar](500) NULL,
	[HeaderMetaCode] [nvarchar](max) NULL,
	[Schema] [nvarchar](500) NULL,
	[AltTag] [nvarchar](500) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_SeoDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Package].[SeoDetail] ADD  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [Package].[SeoDetail] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [Package].[SeoDetail] ADD  DEFAULT (getutcdate()) FOR [UpdatedDate]
GO
ALTER TABLE [Package].[SeoDetail] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
