CREATE PROCEDURE sp_create_dim_sales_person
AS
BEGIN

DROP TABLE [computer_std].[dbo].[dim_sales_person];

CREATE TABLE [computer_std].[dbo].[dim_sales_person]
(
    [Sales_person_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Sales_Person_Name] NVARCHAR(50),
    [Sales_Person_Department] NVARCHAR(250)
);

INSERT INTO [computer_std].[dbo].[dim_sales_person]
(
    [Sales_Person_Name],
    [Sales_Person_Department]
)
SELECT DISTINCT
    [Sales_Person_Name],
    [Sales_Person_Department]
FROM [computer_std].[dbo].[pc_data (1)];

SELECT * 
FROM [computer_std].[dbo].[dim_sales_person];

END;