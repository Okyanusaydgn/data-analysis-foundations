-- Retrieve all customers from either Germany or USA.

SELECT * FROM customers WHERE country = 'Germany' OR country = 'USA'

SELECT * FROM customers WHERE country IN('Germay','USA','France')


SELECT * FROM customers WHERE country NOT IN('Germany','USA','France')