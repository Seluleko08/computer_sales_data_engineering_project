CREATE PROCEDURE sp_create_dim_date
AS
BEGIN

DROP TABLE [computer_std].[dbo].[dim_date];

CREATE TABLE [computer_std].[dbo].[dim_date]
(
    [Date_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Purchase_Date] DATETIME2(7),
    [Ship_Date] NVARCHAR(250)
);

INSERT INTO [computer_std].[dbo].[dim_date]
(
    [Purchase_Date],
    [Ship_Date]
)
SELECT DISTINCT
    [Purchase_Date],
    [Ship_Date]
FROM [computer_std].[dbo].[pc_data (1)];

SELECT * 
FROM [computer_std].[dbo].[dim_date];

END;