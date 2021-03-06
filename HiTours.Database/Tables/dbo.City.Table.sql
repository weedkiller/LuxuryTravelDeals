
CREATE TABLE [dbo].[City](
	[CityId] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CityName] [nvarchar](150) NULL,
	[CityCode] [nvarchar](50) NULL,
	[StateId] [uniqueidentifier] NULL,
	[Description] [nvarchar](max) NULL,
	[CityImage] [image] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
