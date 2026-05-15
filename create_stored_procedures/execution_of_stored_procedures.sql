USE [computer_std];
GO
CREATE OR ALTER PROCEDURE [dbo].[sp_create_dim_customer]
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM [dbo].[dim_customer];

    INSERT INTO [dbo].[dim_customer]
    (
        Customer_Name,
        Customer_Surname,
        Customer_Contact_Number,
        Customer_Email_Address
    )
    SELECT DISTINCT
        Customer_Name,
        Customer_Surname,
        Customer_Contact_Number,
        Customer_Email_Address
    FROM [dbo].[pc_data (1)];

END;
GO

SELECT * FROM [dbo].[dim_customer];