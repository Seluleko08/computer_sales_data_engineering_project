--PC sales fact table
SELECT DISTINCT [Cost_Price]
    ,[Sale_Price]
    ,[Discount_Amount]
    ,[Finance_Amount]
    ,[Credit_Score]
    ,[Cost_of_Repairs]
    ,[Total_Sales_per_Employee]
    ,[PC_Market_Price]
INTO [computer_std].[dbo].[pc_sales_fact]
  FROM [computer_std].[dbo].[pc_data (1)]

--Insert Sales ID column
DROP TABLE [computer_std].[dbo].[pc_sales_fact]
CREATE TABLE [computer_std].[dbo].[pc_sales_fact](
    [SalesID] INT IDENTITY(1,1) PRIMARY KEY,
    [CustomerID] INT,
    [ChannelID] INT,
    [DateID] INT,
    [LocationID] INT,
    [PaymentID] INT,
    [PC_ID] INT,
    [PriorityID] INT,
    [SalesPersonID] INT,
    [ShopID] INT,
    [Cost_Price] [int] NOT NULL,
    [Sale_Price] [int] NOT NULL,
    [Discount_Amount] [int] NOT NULL,
    [Finance_Amount] [nvarchar](50) ,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
    [Total_Sales_per_Employee] [int] NOT NULL,
    [PC_Market_Price] [int] NOT NULL,


--foreign keys
CONSTRAINT fk_CustomerID
foreign key (CustomerID)
REFERENCES [computer_std].[dbo].[dim_customer](Customer_ID),

CONSTRAINT FK_Channel 
FOREIGN KEY (ChannelID) 
REFERENCES [computer_std].[dbo].[dim_channel](Channel_ID),

CONSTRAINT FK_Date 
FOREIGN KEY (DateID) 
REFERENCES [computer_std].[dbo].[dim_date](Date_ID),

CONSTRAINT FK_Location 
FOREIGN KEY (LocationID) 
REFERENCES [computer_std].[dbo].[dim_location](Location_ID),

CONSTRAINT FK_Payment 
FOREIGN KEY (PaymentID) 
REFERENCES [computer_std].[dbo].[dim_payment](Payment_ID),

CONSTRAINT FK_PC 
FOREIGN KEY (PC_ID) 
REFERENCES [computer_std].[dbo].[dim_PC](PC_ID),

CONSTRAINT FK_Priority 
FOREIGN KEY (PriorityID) 
REFERENCES [computer_std].[dbo].[dim_priority](Priority_ID),

CONSTRAINT FK_SalesPerson 
FOREIGN KEY (SalesPersonID) 
REFERENCES [computer_std].[dbo].[dim_sales_person](sales_person_ID),

CONSTRAINT FK_Shop 
FOREIGN KEY (ShopID) 
REFERENCES [computer_std].[dbo].[dim_shop](Shop_ID)
);

-- Insert values into fact table
INSERT INTO [computer_std].[dbo].[pc_sales_fact](
    [Cost_Price],
    [Sale_Price],
    [Discount_Amount],
    [Finance_Amount],
    [Credit_Score],
    [Cost_of_Repairs],
    [Total_Sales_per_Employee],
    [PC_Market_Price]
)
SELECT DISTINCT   
    [Cost_Price],
    [Sale_Price],
    [Discount_Amount],
    [Finance_Amount],
    [Credit_Score],
    [Cost_of_Repairs],
    [Total_Sales_per_Employee],
    [PC_Market_Price]
  FROM [computer_std].[dbo].[pc_data (1)]


  SELECT*FROM [computer_std].[dbo].[pc_sales_fact]