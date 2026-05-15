CREATE PROCEDURE sp_create_dim_pc
AS
BEGIN

DROP TABLE [computer_std].[dbo].[dim_pc];

CREATE TABLE [computer_std].[dbo].[dim_pc]
(
    [pc_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [PC_Make] NVARCHAR(250),
    [PC_Model] NVARCHAR(250),
    [Storage_Type] NVARCHAR(250),
    [Storage_Capacity] NVARCHAR(250),
    [RAM] NVARCHAR(250)
);

INSERT INTO [computer_std].[dbo].[dim_pc]
(
    [PC_Make],
    [PC_Model],
    [Storage_Type],
    [Storage_Capacity],
    [RAM]
)
SELECT DISTINCT
    [PC_Make],
    [PC_Model],
    [Storage_Type],
    [Storage_Capacity],
    [RAM]
FROM [computer_std].[dbo].[pc_data (1)];

SELECT * 
FROM [computer_std].[dbo].[dim_pc];

END;