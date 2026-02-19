-- EOMONTH

SELECT
	OrderID,
	CreationTime,
	EOMONTH(CreationTime) EndOfMonth,
	CAST(DATETRUNC(month, CreationTime) AS DATE) StartOfMonth
	FROM Sales.Orders