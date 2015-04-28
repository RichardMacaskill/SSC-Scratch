CREATE TABLE [dbo].[StockProduct]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[StockUnitID] [int] NOT NULL,
[ProductID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StockProduct] ADD CONSTRAINT [PK__StockPro__3214EC275C804E62] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StockProduct] ADD CONSTRAINT [FK_ProductID_Product] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[StockProduct] ADD CONSTRAINT [FK_StockUnitID_StockUnit] FOREIGN KEY ([StockUnitID]) REFERENCES [dbo].[StockUnit] ([ID])
GO
