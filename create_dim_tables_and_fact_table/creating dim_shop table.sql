--create dim_shop
SELECT DISTINCT
    [Shop_Name],
    [Shop_Age]
    INTO dim_shop
    FROM [computer_std].[dbo].[pc_data (1)]

--create dim_shop with ID
DROP TABLE [computer_std].[dbo].[dim_shop]
CREATE TABLE [computer_std].[dbo].[dim_shop](
    [Shop_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Shop_Name] [nvarchar](250),
    [Shop_Age] [nvarchar](250) 
    );

--inserting values into dim_shop
INSERT INTO [computer_std].[dbo].[dim_shop](
    [Shop_Name],
    [Shop_Age]
)
SELECT DISTINCT [Shop_Name],
                [Shop_Age]
FROM [computer_std].[dbo].[pc_data (1)]