-- Cleansed DIM_Customers --

SELECT 
	c.CustomerKey AS CustomerKey,
	c.FirstName AS FirstName,
	c.LastName AS LastName,
	c.FirstName	+ ' ' + c.LastName AS FullName,
	CASE c.gender
		WHEN 'M' THEN 'Male'
		WHEN 'F' THEN 'Female'
	END AS Gender,
	c.Gender AS GenderShort,
	g.City AS City,
	c.DateFirstPurchase AS DateFirstPurchase
FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
LEFT JOIN dbo.DimGeography AS g
ON c.GeographyKey = g.GeographyKey
