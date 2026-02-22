/*
SELECT
	CONVERT(INT, '123') AS [String to Int CONVERT],
	CONVERT(DATE, '2026-02-22') AS [String to Date CONVERT],
	CreationTime,
	CONVERT(DATE, CreationTime) AS [Datetime to Date CONVERT]
	FROM Sales.Orders
*/

SELECT
	CreationTime,
	CONVERT(DATE, CreationTime) AS [String to Date CONVERT],
	CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. Style:32],
	CONVERT(VARCHAR, CreationTime, 34) AS [EURO  Std. Style:32]
	FROM Sales.Orders