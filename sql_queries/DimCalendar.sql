-- Cleansed DIM_DateTable --

SELECT
	[DateKey],
	[FullDateAlternateKey] AS Date,
	[EnglishDayNameOfWeek] As Day,
	[EnglishMonthName] AS Month,
	Left([EnglishMonthName], 3) AS MonthShort,
	[MonthNumberOfYear] AS MonthNum,
	[CalendarQuarter] AS Quarter,
	[CalendarYear] AS Year
FROM [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= 2022
