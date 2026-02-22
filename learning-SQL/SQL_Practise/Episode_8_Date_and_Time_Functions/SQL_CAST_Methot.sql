-- CAST METHOD

SELECT
	CAST('123' AS INT) AS [String to Int],
	CAST(123 AS VARCHAR) AS [Int to String],
	CAST('2025-08-20' AS date) AS [String to Date],
	CAST('2025-08-20' AS datetime2) AS [String to Datetime],
	CreationTime,
	CAST(CreationTime AS datetime) AS [Datetime to Date]
FROM Sales.Orders