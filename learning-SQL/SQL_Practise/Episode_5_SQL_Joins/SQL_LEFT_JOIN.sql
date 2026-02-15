-- LEFT JOIN
-- Get all customers along with their orders, including those without orders.



SELECT c.id, c.first_name, o.order_id, o.sales FROM customers AS c LEFT JOIN orders AS o On c.id = o.customer_id


SELECT c.id, c.first_name, o.order_id, o.sales FROM orders AS o LEFT JOIN customers AS c On c.id = o.customer_id