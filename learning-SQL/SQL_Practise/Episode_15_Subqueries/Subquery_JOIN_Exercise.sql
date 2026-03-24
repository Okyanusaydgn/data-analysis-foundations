-- Show all customer details and find the total orders of each customer

-- Main Query
SELECT
 c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Country,
    COALESCE(c.Score, 0) AS TotalOrders,
	COALESCE(o.TotalOrders, 0) AS TotalOrders
FROM Sales.Customers c
LEFT JOIN(
	SELECT
	CustomerID,
	COUNT(*) TotalOrders
	FROM Sales.Orders
	GROUP BY CustomerID) o
ON c.CustomerID = o.CustomerID