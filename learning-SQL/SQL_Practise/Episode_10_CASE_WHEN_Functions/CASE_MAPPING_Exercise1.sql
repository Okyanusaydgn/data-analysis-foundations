-- Retrieve customers details with abbreviated country code

/*
SELECT
	CustomerID,
	FirstName,
	LastName,
	Country,
	CASE
		WHEN Country = 'Germany' THEN 'DE'
		WHEN Country = 'USA' THEN 'US'
		ELSE 'n/a'
	END
FROM Sales.Customers
*/

SELECT
	CustomerID,
	FirstName,
	LastName,
	Country,
	CASE Country
		WHEN  'Germany' THEN 'DE'
		WHEN  'USA' THEN 'US'
		ELSE 'n/a'
	END
FROM Sales.Customers