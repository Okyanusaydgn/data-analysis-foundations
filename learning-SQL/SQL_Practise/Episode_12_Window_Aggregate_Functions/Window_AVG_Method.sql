-- Find the average sales across all orders
-- And Find the average sales for each product
-- Additionally provide details such order Id, order date

SELECT
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	AVG (Sales) OVER() AvgSales,
	AVG (Sales) OVER (PARTITION BY ProductID) AvgSalesByProducts
FROM Sales.Orders