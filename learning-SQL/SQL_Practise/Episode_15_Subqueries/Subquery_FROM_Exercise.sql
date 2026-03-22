-- Find the products that have a price higher than the average price of all products


-- Main Query
SELECT
*
FROM(
-- Subquery
	SELECT
	ProductID,
	Price,
	AVG(Price) OVER() AvgPrice
	FROM Sales.Products
)t
WHERE Price > AvgPrice