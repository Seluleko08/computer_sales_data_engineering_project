--creating dim_channel table

    SELECT DISTINCT
    [Channel]
    INTO dim_channel
    FROM [computer_std].[dbo].[pc_data (1)]

--inserting channel ID column

DROP TABLE [computer_std].[dbo].[dim_channel]
CREATE TABLE  [computer_std].[dbo].[dim_channel](
    [Channel_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Channel] [nvarchar](250)
     );

--Insert values into dim_channel table
INSERT INTO [computer_std].[dbo].[dim_channel](
            [Channel]
)
SELECT DISTINCT [Channel]
FROM [computer_std].[dbo].[pc_data (1)]

--checking dim_channel table
SELECT*FROM  [computer_std].[dbo].[dim_channel];