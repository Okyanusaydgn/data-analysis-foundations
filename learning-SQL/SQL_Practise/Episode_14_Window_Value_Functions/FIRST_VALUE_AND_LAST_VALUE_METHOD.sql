-- Find the lowest and highest sales for each product
-- Find the difference in sales between the current and the lowest sales


SELECT
    OrderID,
    ProductID,
    Sales,
    FIRST_VALUE(Sales) OVER (PARTITION BY ProductID ORDER BY Sales) AS LowestSales,
    LAST_VALUE(Sales) OVER (PARTITION BY ProductID ORDER BY Sales
    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS HighestSales,
    FIRST_VALUE(Sales) OVER (PARTITION BY ProductID ORDER BY Sales DESC) AS HighestSales2,
    MIN(Sales) OVER (PARTITION BY ProductID) LowestSales3,
    MAX(Sales) OVER (PARTITION BY ProductID) HighestSales3,
    Sales - FIRST_VALUE(Sales) OVER (PARTITION BY ProductID ORDER BY Sales) AS SalesDifference
FROM Sales.Orders;

