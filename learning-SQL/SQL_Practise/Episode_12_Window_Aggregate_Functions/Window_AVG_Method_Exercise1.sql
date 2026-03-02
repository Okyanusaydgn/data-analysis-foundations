-- Find the average scores of customers
-- Additionally provide details such CustomerID and LastName

SELECT
	CustomerID,
	LastName,
	Score,
	COALESCE(Score,0) CustomerScore,
	AVG(Score) OVER () AvgScore,
	AVG(COALESCE(Score,0)) OVER() AvgScoreWithoutNull
FROM Sales.Customers