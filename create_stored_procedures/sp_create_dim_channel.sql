CREATE PROCEDURE sp_create_dim_channel
AS
BEGIN
  -- SQL_statements to be executed
 ---Dim channel inserting primary key 
DROP TABLE  [computer_std].[dbo].[dim_channel] CREATE TABLE  [computer_std].[dbo].[dim_channel](
  [Channel_ID] int identity (1, 1) primary key,
  [Channel] [nvarchar](50) NOT NULL,
  [Load_date] DATETIME DEFAULT GETDATE()
)
 ---Inserting data into table 
INSERT INTO
 [computer_std].[dbo].[dim_channel]SELECT
  DISTINCT [Channel]
FROM
   [computer_std].[dbo].[dim_channel] 
---checking if step was implemented
SELECT
  *
FROM [computer_std].[dbo].[pc_data (1)]
END;