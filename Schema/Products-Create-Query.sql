USE [Products]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 9/1/2021 5:45:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[ID] [uniqueidentifier] NOT NULL,
	[TypeID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[Desc] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_TypeID] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ProductTypes] ([ID])
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_TypeID]
GO