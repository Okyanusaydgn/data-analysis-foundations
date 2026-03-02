-- Find the total number of Customers
-- Find the total of scores for the customers
-- Additionally provide All customers Details


SELECT
	*,
	COUNT(*) OVER() TotalCustomers,
	COUNT(Score) OVER() TotalScores,
	COUNT(Country) OVER() TotalCountries
FROM Sales.Customers