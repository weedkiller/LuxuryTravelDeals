
CREATE TABLE [dbo].[UserCountries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortName] [varchar](3) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[PhoneCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
