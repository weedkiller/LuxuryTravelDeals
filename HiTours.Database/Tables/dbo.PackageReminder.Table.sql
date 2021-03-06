
CREATE TABLE [dbo].[PackageReminder](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[PackageId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_PackageReminder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
