-- Find the highest and lowest sales of all orders
-- Find the highest and lowest sales for each product
-- Additionally provide details such order Id, order date

SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	MAX(Sales) OVER() HighestSales,
	MIN(Sales) OVER() LowestSales,
	MAX(Sales) OVER(PARTITION BY ProductID ) HighestSalesProduct,
	MIN(Sales) OVER(PARTITION BY ProductID) LowestSalesProduct
FROM Sales.Orders