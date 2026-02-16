-- RIGHT ANTI JOIN
-- Get all orders without matching customers.
-- ALWAYS USE LEFT JOIN !!
SELECT * 
FROM customers AS c 
RIGHT JOIN orders AS o 
ON c.id = o.customer_id
WHERE c.id IS NULL