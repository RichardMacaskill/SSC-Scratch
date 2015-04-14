CREATE TABLE [dbo].[Product]
(
[ID] [int] NOT NULL,
[CategoryID] [int] NOT NULL,
[ShortName] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[Description] [varchar] (500) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK__Product__3214EC278D0D24C2] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_CategoryId_Category] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([ID])
GO
