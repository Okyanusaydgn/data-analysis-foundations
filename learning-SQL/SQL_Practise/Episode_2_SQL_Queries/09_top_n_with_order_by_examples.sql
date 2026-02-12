-- Retrieve the top 3 Customers with the Highest Scores

--SELECT TOP 3 * FROM customers 

----------------------------

-- Retrieve the top 3 Customers with the Highest Scores

--SELECT TOP 3 * FROM customers ORDER BY score DESC

----------------------------

-- Retrieve the lowest 2 Customers based on the Score

--SELECT TOP 2 * FROM customers ORDER BY score ASC

----------------------------

-- Get the Two most recent orders

SELECT TOP 2 * FROM orders ORDER BY order_date DESC