/* =====================================================
   Exercise 1
   Current row + next 2 rows (forward window)
   ===================================================== */
SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    SUM(Sales) OVER (
        PARTITION BY OrderStatus
        ORDER BY OrderDate
        ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
    ) AS TotalSales
FROM Sales.Orders;


/* =====================================================
   Exercise 2
   Previous 2 rows + current row
   ===================================================== */
SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    SUM(Sales) OVER (
        PARTITION BY OrderStatus
        ORDER BY OrderDate
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS TotalSales
FROM Sales.Orders;


/* =====================================================
   Exercise 3
   Previous 2 rows (short syntax)
   ===================================================== */
SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    SUM(Sales) OVER (
        PARTITION BY OrderStatus
        ORDER BY OrderDate
        ROWS 2 PRECEDING
    ) AS TotalSales
FROM Sales.Orders;


/* =====================================================
   Exercise 4
   Running Total (from beginning to current row)
   ===================================================== */
SELECT
    OrderID,
    OrderDate,
    OrderStatus,
    Sales,
    SUM(Sales) OVER (
        PARTITION BY OrderStatus
        ORDER BY OrderDate
        ROWS UNBOUNDED PRECEDING
    ) AS TotalSales
FROM Sales.Orders;