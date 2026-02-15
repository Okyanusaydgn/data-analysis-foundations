-- NO JOIN
-- Retrieve all data from customers and orders in two different results.

/*
SELECT * FROM customers

SELECT * FROM orders
*/

-- INNER JOIN
-- Get all customers along with their orders, but only for customers who have placed an order

--SELECT * FROM customers INNER JOIN orders ON id = customer_id


SELECT id, first_name, order_id, sales FROM customers INNER JOIN orders ON id = customer_id

SELECT customers.id, customers.first_name, orders.order_id, orders.sales FROM customers INNER JOIN orders ON customers.id = orders.customer_id


SELECT c.id, c.first_name, o.order_id, o.sales FROM customers AS c INNER JOIN orders AS o ON c.id = o.customer_id