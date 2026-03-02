-- Find the percentage contribution of each product's sales to the total sales


SELECT
	OrderID,
	ProductID,
	Sales,
	SUM(Sales) OVER () TotalSales,
ROUND (CAST(Sales AS Float) / SUM(Sales) OVER () * 100, 2) PercentageOfTotal
FROM Sales.Orders