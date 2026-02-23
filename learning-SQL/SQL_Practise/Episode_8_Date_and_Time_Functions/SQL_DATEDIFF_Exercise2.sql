-- DATEDIFF / Exercise 2

-- Time Gap Analysis
-- Find the number of days between each order and the previous order

SELECT
	OrderID,
	OrderDate CurrentOrderDate,
	LAG(OrderDate) OVER (ORDER BY OrderDate) PreviousOrderDate,
	DATEDIFF(day,LAG(OrderDate) OVER (ORDER BY OrderDate) ,OrderDate ) NrOfDays
FROM Sales.Orders