-- Find the total score and total number of customers for each country

SELECT * FROM customers


SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country