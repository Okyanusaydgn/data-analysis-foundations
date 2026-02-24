-- Identify the customers who have no scores

SELECT 
	*
FROM Sales.Customers
WHERE Score IS NULL

-- List all customers who have scores

SELECT
	*
FROM Sales.Customers
WHERE Score IS NOT NULL