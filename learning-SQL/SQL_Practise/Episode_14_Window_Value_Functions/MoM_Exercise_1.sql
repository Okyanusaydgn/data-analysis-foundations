-- Analyze the month-over-month performance by finding the percentage change
-- in sales between the current and previous months

SELECT
*,
CurrentMonthSales - PreviousMonthSales AS MoM_Change,
ROUND( CAST((CurrentMonthSales - PreviousMonthSales) AS FLOAT)  / PreviousMonthSales * 100, 1) AS MoM_Perc
FROM(
SELECT
	MONTH(OrderDate) OrderMonth,
	SUM(Sales) CurrentMonthSales,
	LAG(SUM(Sales)) OVER (ORDER BY MONTH(OrderDate)) PreviousMonthSales
FROM Sales.Orders
GROUP BY
	MONTH(OrderDate)
)t