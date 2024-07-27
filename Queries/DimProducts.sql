-- Cleansed DIM_Products --

SELECT 
	p.ProductKey AS ProductKey,
	p.ProductAlternateKey AS ProductItemCode,
	p.EnglishProductName AS ProductName,
	ps.EnglishProductSubcategoryName AS SubcategoryName,
	pc.EnglishProductCategoryName AS CatergoryName,
	p.Color AS ProductColor,
	p.Size AS ProductSize,
	p.ProductLine AS ProductLine,
	p.ModelName AS ProductModelName,
	p.EnglishDescription AS ProductDescription,
	ISNULL (p.Status, 'Outdated') AS ProductStatus 
FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey

