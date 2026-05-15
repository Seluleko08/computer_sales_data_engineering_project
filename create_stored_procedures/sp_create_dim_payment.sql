CREATE PROCEDURE sp_create_dim_payment
AS
BEGIN

DROP TABLE [computer_std].[dbo].[dim_payment];

CREATE TABLE [computer_std].[dbo].[dim_payment]
(
    [Payment_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Payment_Method] NVARCHAR(50)
);

INSERT INTO [computer_std].[dbo].[dim_payment]
(
    [Payment_Method]
)
SELECT DISTINCT
    [Payment_Method]
FROM [computer_std].[dbo].[pc_data (1)];

SELECT * 
FROM [computer_std].[dbo].[dim_payment];

END;