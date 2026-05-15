--creating table dim_pc
SELECT DISTINCT
      [PC_Make],
      [PC_Model],
      [Storage_Type],
      [Storage_Capacity],
      [RAM]
INTO dim_pc   
FROM [computer_std].[dbo].[pc_data (1)]


DROP TABLE [computer_std].[dbo].[dim_pc]
CREATE TABLE [computer_std].[dbo].[dim_pc](
   [pc_ID] INT IDENTITY(1,1) PRIMARY KEY,
   [PC_Make] [nvarchar](250),
   [PC_Model] [nvarchar](250),
   [Storage_Type] [nvarchar](250), 
   [Storage_Capacity] [nvarchar](250),
   [RAM] [nvarchar](250)
);

--inserting values to dim_pc table
INSERT INTO [computer_std].[dbo].[dim_pc](
      [PC_Make],
      [PC_Model],
      [Storage_Type],
      [Storage_Capacity],
      [RAM]
)
SELECT DISTINCT [PC_Make],
                [PC_Model],
                [Storage_Type],
                [Storage_Capacity],
                [RAM] 
FROM [computer_std].[dbo].[pc_data (1)]

--checking dim_pc
SELECT* FROM  [computer_std].[dbo].[dim_pc];