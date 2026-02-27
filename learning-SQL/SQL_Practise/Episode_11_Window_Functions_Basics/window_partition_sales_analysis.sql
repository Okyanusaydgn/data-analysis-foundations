-- Find the total sales across all orders
-- Additionally provide details such order id, order date

/*
SELECT
	OrderID,
	OrderDate,
	SUM(Sales) OVER () TotalSales
FROM Sales.Orders
*/

-- Find the total sales across all orders
-- Find the total sales for each product
-- Find the total sales for each combination of product and order status
-- Additionally provide details such order id, order date

SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	OrderStatus,
	SUM(Sales) OVER () TotalSales,
	SUM(Sales) OVER (PARTITION BY ProductID) TotalSalesByProduct,
	SUM(Sales) OVER (PARTITION BY ProductID, OrderStatus) SalesByProductAndStatus
FROM Sales.Orders