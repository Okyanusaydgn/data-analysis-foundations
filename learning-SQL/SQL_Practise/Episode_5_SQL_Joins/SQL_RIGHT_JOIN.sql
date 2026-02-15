-- RIGHT JOIN
-- Get all customers along with their orders, including orders without matching customers.
-- Most people use 'LEFT JOIN' so that don't use RIGHT JOIN 😄

SELECT 
	c.id,
	c.first_name, 
	o.order_id, 
	o.sales,
	o.order_date
	FROM customers AS c 
	RIGHT JOIN orders AS o
	ON c.id = o.customer_id


	SELECT 
	c.id,
	c.first_name, 
	o.order_id, 
	o.sales,
	o.order_date
	FROM customers AS c 
	LEFT JOIN orders AS o
	ON c.id = o.customer_id