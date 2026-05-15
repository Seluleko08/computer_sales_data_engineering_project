SELECT
    c.Customer_ID,
    ch.Channel_ID,
    d.Date_ID,
    l.Location_ID,
    p.Payment_ID,
    pc.pc_ID,
    pr.Priority_ID,
    sp.Sales_person_ID,
    s.Shop_ID,

    r.Cost_Price,
    r.Sale_Price,
    r.Discount_Amount,
    r.Finance_Amount,
    r.Credit_Score,
    r.Cost_of_Repairs,
    r.Total_Sales_per_Employee,
    r.PC_Market_Price

FROM [computer_std].[dbo].[pc_data (1)] r

-- Customer
JOIN [computer_std].[dbo].[dim_customer] c
ON r.Customer_Name = c.Customer_Name
AND r.Customer_Surname = c.Customer_Surname
AND r.Customer_Contact_Number = c.Customer_Contact_Number
AND r.Customer_Email_Address = c.Customer_Email_Address

-- Channel
JOIN [computer_std].[dbo].[dim_channel] ch
ON r.Channel = ch.Channel

-- Date
JOIN [computer_std].[dbo].[dim_date] d
ON r.Purchase_Date = d.Purchase_Date
AND r.Ship_Date = d.Ship_Date

-- Location
JOIN [computer_std].[dbo].[dim_location] l
ON r.Continent = l.Continent
AND r.Country_or_State = l.Country_or_State
AND r.Province_or_City = l.Province_or_City

-- Payment
JOIN [computer_std].[dbo].[dim_payment] p
ON r.Payment_Method = p.Payment_Method

-- PC
JOIN [computer_std].[dbo].[dim_pc] pc
ON r.PC_Make = pc.PC_Make
AND r.PC_Model = pc.PC_Model
AND r.Storage_Type = pc.Storage_Type
AND r.Storage_Capacity = pc.Storage_Capacity
AND r.RAM = pc.RAM

-- Priority
JOIN [computer_std].[dbo].[dim_priority] pr
ON r.Priority = pr.Priority

-- Sales Person
JOIN [computer_std].[dbo].[dim_sales_person] sp
ON r.Sales_Person_Name = sp.Sales_Person_Name
AND r.Sales_Person_Department = sp.Sales_Person_Department

-- Shop
JOIN [computer_std].[dbo].[dim_shop] s
ON r.Shop_Name = s.Shop_Name
AND r.Shop_Age = s.Shop_Age;