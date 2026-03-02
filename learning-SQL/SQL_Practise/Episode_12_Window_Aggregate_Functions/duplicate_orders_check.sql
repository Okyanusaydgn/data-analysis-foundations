-- Check whether the table 'orders' contains any duplicate rows

SELECT
*
FROM (
	SELECT
		OrderID,
		COUNT(*) OVER(PARTITION BY OrderID) CheckPk
FROM Sales.OrdersArchive
)t WHERE CheckPk > 1