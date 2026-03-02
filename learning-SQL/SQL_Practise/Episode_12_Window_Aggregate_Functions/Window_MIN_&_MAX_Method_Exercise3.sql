-- Find the deviation of each sales from the minimum and maximum sales amounts

SELECT
    OrderID,
    Sales,
    MAX(Sales) OVER() AS HighestSales,
    MIN(Sales) OVER() AS LowestSales,
    Sales - MAX(Sales) OVER() AS DeviationFromMax,
    Sales - MIN(Sales) OVER() AS DeviationFromMin
FROM Sales.Orders;