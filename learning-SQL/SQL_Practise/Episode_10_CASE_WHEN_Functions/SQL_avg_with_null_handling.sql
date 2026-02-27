-- Find the average scores of customers and treat Nulls as 0
-- Additionally provide details such CustomerID and LastName


SELECT
	CustomerID,
	LastName,
	Score,
	CASE
		WHEN Score IS NULL THEN 0
		ELSE Score
	END ScoreClean,

	AVG(
		CASE
			WHEN Score IS NULL THEN 0
			ELSE Score
		END) OVER () AvgCustomerClean,
 
	AVG(Score) OVER() AvgCustomer
FROM Sales.Customers