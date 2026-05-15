--create tttable dim_sales_person
SELECT DISTINCT
    [Sales_Person_Name],
    [Sales_Person_Department]
    INTO dim_sales_person
    FROM [computer_std].[dbo].[pc_data (1)]

    --create dim_sales_person table with ID
    DROP TABLE [computer_std].[dbo].[dim_sales_person]
    CREATE TABLE [computer_std].[dbo].[dim_sales_person]( 
     [Sales_person_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Sales_Person_Name] [nvarchar](50) ,
    [Sales_Person_Department] [nvarchar](250)
   );

   --insert values
    INSERT INTO  [computer_std].[dbo].[dim_sales_person] (
    [Sales_Person_Name],
    [Sales_Person_Department]
    )
SELECT DISTINCT [Sales_Person_Name],
                [Sales_Person_Department]
 FROM [computer_std].[dbo].[pc_data (1)]

 --check dim_sales_person
 SELECT*FROM  [computer_std].[dbo].[dim_sales_person];