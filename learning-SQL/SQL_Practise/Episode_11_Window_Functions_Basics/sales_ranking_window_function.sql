-- Rank each order based on their sales from highest to lowest
-- Additionally provide details such order id, order date


SELECT
	OrderID,
	OrderDate,
	Sales,
	RANK() OVER (ORDER BY Sales Desc) RankSales
FROM Sales.Orders