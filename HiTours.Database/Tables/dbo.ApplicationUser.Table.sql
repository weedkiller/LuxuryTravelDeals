
CREATE TABLE [dbo].[ApplicationUser](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
