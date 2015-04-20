CREATE TABLE [dbo].[Category]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[CategoryCode] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[Description] [varchar] (200) COLLATE Latin1_General_CI_AS NULL,
[ValidFrom] [datetime] NULL CONSTRAINT [DF__Category__ValidF__2A4B4B5E] DEFAULT (getdate()),
[ValidTo] [datetime] NULL CONSTRAINT [DF__Category__ValidT__2B3F6F97] DEFAULT (NULL)
) ON [PRIMARY]
ALTER TABLE [dbo].[Category] ADD 
CONSTRAINT [PK__Category__3214EC2783BD3A3B] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [UNQ_Category_Code] UNIQUE NONCLUSTERED  ([CategoryCode]) ON [PRIMARY]

GO
