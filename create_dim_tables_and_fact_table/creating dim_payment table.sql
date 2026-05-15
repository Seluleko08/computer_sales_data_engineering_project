--create dim_payment table
SELECT DISTINCT
    [Payment_Method]
    INTO dim_payment
    FROM [computer_std].[dbo].[pc_data (1)]

    --create dim_payment table with ID
    DROP TABLE  [computer_std].[dbo].[dim_payment]
    CREATE TABLE  [computer_std].[dbo].[dim_payment] (
     [Payment_ID] INT IDENTITY(1,1) PRIMARY KEY,
     [Payment_Method] [nvarchar](50)
     );

--insert values into dim_payment table
INSERT INTO [computer_std].[dbo].[dim_payment] (
[Payment_Method]
)
SELECT DISTINCT [Payment_Method]
FROM [computer_std].[dbo].[pc_data (1)]

--check dim_payment table
SELECT*FROM [computer_std].[dbo].[dim_payment]