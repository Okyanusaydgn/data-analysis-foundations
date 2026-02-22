-- DATEDIFF / Exercise 1

/*
-- Find the average shipping duration in days for each month

SELECT
	OrderID,
	OrderDate,
	ShipDate,
	DATEDIFF(day, OrderDate, ShipDate) Day2Ship
FROM Sales.Orders
*/

SELECT * FROM Sales.Orders

SELECT
	MONTH(OrderDate) AS OrderDate,
	AVG(DATEDIFF(day, OrderDate, ShipDate)) AvgShip
FROM Sales.Orders
GROUP BY MONTH(OrderDate) 
