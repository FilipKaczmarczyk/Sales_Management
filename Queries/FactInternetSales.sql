-- Cleansed FACT_InternetSalesTable --

SELECT 
	[ProductKey],
	[OrderDateKey],
	[DueDateKey],
	[ShipDateKey],
	[CustomerKey],
	[SalesOrderNumber],
	[SalesAmount]
FROM [dbo].[FactInternetSales]
WHERE LEFT([OrderDateKey], 4) >= YEAR(GETDATE()) -2 -- LAST TWO YEARS ONLY
ORDER BY OrderDateKey ASC
