-- Find the total Sales Across all orders

SELECT
    OrderID,
    OrderDate,
    ProductID,
    SUM(Sales) OVER (PARTITION BY ProductID) AS TotalSalesByProducts
FROM Sales.Orders