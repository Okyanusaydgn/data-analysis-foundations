SELECT
OrderID,
Sales,
NTILE(3) OVER (ORDER BY Sales DESC) ThreeBucket,
NTILE(2) OVER (ORDER BY Sales DESC) TwoBucket,
NTILE(1) OVER (ORDER BY Sales DESC) OneBucket
FROM Sales.Orders