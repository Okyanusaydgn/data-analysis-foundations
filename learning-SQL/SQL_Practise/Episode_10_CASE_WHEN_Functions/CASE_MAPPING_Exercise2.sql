-- Retrieve employee details with gender displayed as full text

SELECT
	EmployeeID,
	FirstName,
	LastName,
	Gender,
	CASE	
		WHEN Gender = 'F' THEN 'Female'
		WHEN Gender = 'M' THEN 'Male'
	END GenderFullText
	FROM Sales.Employees