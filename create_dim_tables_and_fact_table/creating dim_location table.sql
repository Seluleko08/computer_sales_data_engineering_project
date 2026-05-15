--creating table dim_location
SELECT DISTINCT
       [Continent],
       [Country_or_State],
       [Province_or_City]
       INTO dim_location
       FROM [computer_std].[dbo].[pc_data (1)]

 --inserting location ID column
 DROP TABLE  [computer_std].[dbo].[dim_location]
 CREATE TABLE [computer_std].[dbo].[dim_location](
  [Location_ID] INT IDENTITY(1,1) PRIMARY KEY,
    [Continent] NVARCHAR(250),
    [Country_or_State] NVARCHAR(250),
    [Province_or_City] NVARCHAR(250)
    
);

--insert values into table 
    INSERT INTO [computer_std].[dbo].[dim_location]( 
       [Continent],
       [Country_or_State],
       [Province_or_City]
)

SELECT DISTINCT [Continent],
                [Country_or_State],
                [Province_or_City]
FROM [computer_std].[dbo].[pc_data (1)]

--checking dim_location table

SELECT*FROM [computer_std].[dbo].[dim_location]
