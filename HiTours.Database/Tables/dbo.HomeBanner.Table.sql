
CREATE TABLE [dbo].[HomeBanner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[Text1] [nvarchar](50) NULL,
	[Text2] [nvarchar](50) NULL,
	[Text3] [nvarchar](50) NULL,
	[Text4] [nvarchar](50) NULL,
 CONSTRAINT [PK_HomeBanner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
