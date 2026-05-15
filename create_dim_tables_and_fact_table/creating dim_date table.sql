 --create dim_date table
 SELECT DISTINCT
    [Purchase_Date],
    [Ship_Date]
    INTO dim_date
    FROM [computer_std].[dbo].[pc_data (1)]

 --create dim_date with ID
 DROP TABLE [computer_std].[dbo].[dim_date]
 CREATE TABLE [computer_std].[dbo].[dim_date](
   [Date_ID] INT IDENTITY(1,1) PRIMARY KEY,
   [Purchase_Date] [datetime2](7),
   [Ship_Date]NVARCHAR(250)
   )
   --insert values into dim_date table
   INSERT INTO [computer_std].[dbo].[dim_date] (
    [Purchase_Date],
    [Ship_Date]
)
SELECT DISTINCT [Purchase_Date],
                [Ship_Date]
FROM [computer_std].[dbo].[pc_data (1)]

--check dim_date table
SELECT*FROM [computer_std].[dbo].[dim_date];