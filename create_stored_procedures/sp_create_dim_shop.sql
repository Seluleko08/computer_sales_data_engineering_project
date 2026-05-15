CREATE PROCEDURE sp_create_dim_shop
AS
BEGIN

DROP TABLE [computer_std].[dbo].[dim_shop];

CREATE TABLE [computer_std].[dbo].[dim_shop]
(
    [Shop_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Shop_Name] NVARCHAR(250),
    [Shop_Age] NVARCHAR(250)
);

INSERT INTO [computer_std].[dbo].[dim_shop]
(
    [Shop_Name],
    [Shop_Age]
)
SELECT DISTINCT
    [Shop_Name],
    [Shop_Age]
FROM [computer_std].[dbo].[pc_data (1)];

SELECT * 
FROM [computer_std].[dbo].[dim_shop];

END;