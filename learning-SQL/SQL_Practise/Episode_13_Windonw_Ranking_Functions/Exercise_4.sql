-- Assign uniqued IDs to the rows of the 'Orders Archieve'

SELECT
	ROW_NUMBER() OVER(ORDER BY OrderID) UniqueID,
	*
FROM Sales.OrdersArchive