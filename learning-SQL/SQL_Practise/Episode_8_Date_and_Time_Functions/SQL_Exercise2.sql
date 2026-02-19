-- How many orders were placed each year ?

SELECT
	YEAR(OrderDate) AS OrderYear,
	DATENAME(month, OrderDate) AS OrderMonth,
	COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY 
    YEAR(OrderDate),
    DATEPART(month, OrderDate),
    DATENAME(month, OrderDate)
