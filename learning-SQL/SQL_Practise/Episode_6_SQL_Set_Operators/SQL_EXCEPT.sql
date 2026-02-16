-- Find the employees who are not customers at the same time.

 SELECT
 FirstName,
 LastName
 FROM Sales.Customers
 EXCEPT
 SELECT
 FirstName,
 LastName
 FROM Sales.Employees