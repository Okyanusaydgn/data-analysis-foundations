-- DATEPART

SELECT
	OrderID,
	CreationTime,
	DATEPART(year, CreationTime) Year_dp,
	DATEPART(month, CreationTime) Month_dp,
	DATEPART(day,CreationTime) Day_dp,
	DATEPART(hour,CreationTime) Hour_dp,
	DATEPART(quarter, CreationTime) Quarter_dp,
	DATEPART(week, CreationTime) Week_dp,
	YEAR(CreationTime) Year,
	MONTH(CreationTime) Month,
	DAY(CreationTime) Day
FROM Sales.Orders