/* Task:
Get all orders (current + archive)
with customer, product and employee details
*/

SELECT
	o.OrderID,
	o.OrderDate,
	c.FirstName + ' ' + c.LastName AS CustomerName,
	p.Product AS ProductName,
	p.Price,
	o.Sales,
	e.FirstName + ' ' + e.LastName AS EmployeeName,
	'Orders' AS OrderSource
FROM Sales.Orders o
LEFT JOIN Sales.Customers c
	ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products p
	ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees e
	ON o.SalesPersonID = e.EmployeeID

UNION ALL

SELECT
	oa.OrderID,
	oa.OrderDate,
	c.FirstName + ' ' + c.LastName AS CustomerName,
	p.Product AS ProductName,
	p.Price,
	oa.Sales,
	e.FirstName + ' ' + e.LastName AS EmployeeName,
	'Archive' AS OrderSource
FROM Sales.OrdersArchive oa
LEFT JOIN Sales.Customers c
	ON oa.CustomerID = c.CustomerID
LEFT JOIN Sales.Products p
	ON oa.ProductID = p.ProductID
LEFT JOIN Sales.Employees e
	ON oa.SalesPersonID = e.EmployeeID;
