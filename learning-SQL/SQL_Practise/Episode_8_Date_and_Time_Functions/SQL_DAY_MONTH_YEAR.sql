SELECT
	OrderID,
	CreationTime,
	YEAR(CreationTime) Year,
	MONTH(CreationTime) Month,
	DAY(CreationTime) Day
FROM Sales.Orders