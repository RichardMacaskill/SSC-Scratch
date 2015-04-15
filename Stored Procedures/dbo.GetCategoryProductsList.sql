SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetCategoryProductsList]
    (
      @CategoryCode VARCHAR(100) NULL
    )
AS
    BEGIN
        SELECT  c.CategoryCode ,
                p.ID ,
                p.CategoryID ,
                p.ShortName ,
                p.Description
        FROM    dbo.Category AS c
                INNER JOIN dbo.Product AS p ON p.CategoryID = c.ID;
        RETURN 0;
    END;
GO
