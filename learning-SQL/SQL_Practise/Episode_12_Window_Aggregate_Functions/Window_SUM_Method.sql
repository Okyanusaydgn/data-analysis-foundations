-- Find the total sales across all orders
-- And the total sales for each product
-- Additionally provide details such order Id, order date


SELECT
	OrderID,
	OrderDate,
	Sales,
	ProductID, 
	SUM (Sales) OVER () TotalSales,
	SUM (Sales) OVER(PARTITION BY ProductID) SalesByProducts
FROM Sales.Orders