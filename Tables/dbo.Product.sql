CREATE TABLE [dbo].[Product]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[CategoryID] [int] NOT NULL,
[ShortName] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[Description] [varchar] (500) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
ALTER TABLE [dbo].[Product] ADD 
CONSTRAINT [PK__Product__3214EC2740001041] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_CategoryId_Category] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([ID])
GO
