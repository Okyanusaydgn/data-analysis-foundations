-- Find the total number of Orders 
-- Find the total number of Orders for each customers
-- Additionall provide details such order Id, order date

SELECT
	OrderID,
	OrderDate,
	CustomerID,
	COUNT(*) OVER() TotalOrders,
	COUNT(*) OVER(PARTITION BY CustomerID) OrderByCustomers
FROM Sales.Orders