-- Find the products that fall within the highest %40 of the prices
SELECT
*,
CONCAT(DistRank * 100, '%') DistRankPerc
FROM(
SELECT
	Product,
	Price,
	PERCENT_RANK() OVER (ORDER BY Price DESC) percentRank,
	CUME_DIST()    OVER (ORDER BY Price DESC) DistRank
FROM Sales.Products
)t WHERE percentRank <= 0.4