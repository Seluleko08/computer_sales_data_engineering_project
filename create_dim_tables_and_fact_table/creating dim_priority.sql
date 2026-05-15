--create dim_priority
    SELECT DISTINCT
    [Priority]
    INTO dim_priority
    FROM [computer_std].[dbo].[pc_data (1)]

--inserting customer ID column
DROP TABLE [computer_std].[dbo].[dim_priority]
CREATE TABLE [computer_std].[dbo].[dim_priority] (
    [Priority_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Priority] [nvarchar](250)
     );

--insert values into dim_priority table
INSERT INTO [computer_std].[dbo].[dim_priority] (
            [Priority] 
)
SELECT DISTINCT [Priority] 
FROM [computer_std].[dbo].[pc_data (1)]

--check dim_priority table
SELECT*FROM [computer_std].[dbo].[dim_priority];