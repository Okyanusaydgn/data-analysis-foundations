-- Show the employees who have the highest salaries
SELECT
	*
FROM (
	SELECT
		*,
		MAX (Salary) OVER () HighestSalary
	FROM Sales.Employees
) t WHERE Salary = HighestSalary