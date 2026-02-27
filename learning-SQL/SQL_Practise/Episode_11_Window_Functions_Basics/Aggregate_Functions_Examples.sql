/* =====================================================
   AGGREGATE FUNCTIONS EXAMPLES
   ===================================================== */

/* 1️⃣ Find the total number of orders */
SELECT
    COUNT(*) AS total_number_of_orders
FROM Orders;


/* 2️⃣ Find the total sales amount */
SELECT
    SUM(sales) AS total_sales
FROM Orders;


/* 3️⃣ Find the average sales value */
SELECT
    AVG(sales) AS average_sales
FROM Orders;


/* 4️⃣ Find the highest sales value */
SELECT
    MAX(sales) AS highest_sales
FROM Orders;


/* 5️⃣ Find the lowest sales value */
SELECT
    MIN(sales) AS lowest_sales
FROM Orders;


/* =====================================================
   AGGREGATE FUNCTIONS WITH GROUP BY (Per Customer)
   ===================================================== */

SELECT
    customer_id,
    COUNT(*) AS total_number_of_orders,
    SUM(sales) AS total_sales,
    AVG(sales) AS average_sales,
    MAX(sales) AS highest_sales,
    MIN(sales) AS lowest_sales
FROM Orders
GROUP BY customer_id;