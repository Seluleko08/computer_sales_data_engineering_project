 SELECT DISTINCT 
       [Customer_Name],
       [Customer_Surname],
       [Customer_Contact_Number],
       [Customer_Email_Address]
       INTO dim_customer
       FROM [computer_std].[dbo].[pc_data (1)]

--creating dim_customer table with ID
       DROP TABLE  [computer_std].[dbo].[dim_customer]
       CREATE TABLE  [computer_std].[dbo].[dim_customer](
        [Customer_ID] INT IDENTITY(1,1) PRIMARY KEY,
        [Customer_Name] NVARCHAR(250),
        [Customer_Surname] NVARCHAR(250),
        [Customer_Contact_Number] NVARCHAR(250),
        [Customer_Email_Address] NVARCHAR(250)
);
 
 --insert values into dim_customer
 INSERT INTO [computer_std].[dbo].[dim_customer](
       [Customer_Name],
       [Customer_Surname],
       [Customer_Contact_Number],
       [Customer_Email_Address]
)
SELECT DISTINCT
       [Customer_Name],
       [Customer_Surname],
       [Customer_Contact_Number],
       [Customer_Email_Address]
 FROM [computer_std].[dbo].[pc_data (1)] 

 --check dim_customer table
 SELECT * FROM  [computer_std].[dbo].[dim_customer];