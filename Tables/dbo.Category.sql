CREATE TABLE [dbo].[Category]
(
[ID] [int] NOT NULL,
[CategoryCode] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[Description] [varchar] (200) COLLATE Latin1_General_CI_AS NULL,
[ValidFrom] [datetime] NULL CONSTRAINT [DF__Category__ValidF__108B795B] DEFAULT (getdate()),
[ValidTo] [datetime] NULL CONSTRAINT [DF__Category__ValidT__117F9D94] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [PK__Category__3214EC278083D76E] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
