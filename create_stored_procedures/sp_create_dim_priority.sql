CREATE PROCEDURE sp_create_dim_priority
AS
BEGIN

DROP TABLE [computer_std].[dbo].[dim_priority];

CREATE TABLE [computer_std].[dbo].[dim_priority]
(
    [Priority_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Priority] NVARCHAR(250)
);

INSERT INTO [computer_std].[dbo].[dim_priority]
SELECT DISTINCT [Priority]
FROM [computer_std].[dbo].[pc_data (1)];

SELECT * 
FROM [computer_std].[dbo].[dim_priority];

END;