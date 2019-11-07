-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT P.ProductName, C.CategoryName 
FROM [Products] as P 
JOIN [Categories] as C 
ON C.CategoryID = P.CategoryId


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT O.OrderID, S.ShipperName, O.OrderDate  
FROM [Orders] as O 
JOIN [Shippers] as S 
ON S.ShipperID = O.ShipperID 
WHERE OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT P.ProductName, OrderD.Quantity 
FROM [OrderDetails] as OrderD 
JOIN [Products] as P 
ON P.ProductID = OrderD.ProductID 
WHERE OrderD.OrderID = "10251" 
ORDER BY P.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT O.OrderID, C.CustomerName as Customer, E.LastName as OrderedBy 
FROM [Orders] as O JOIN 
[Customers] as C 
ON C.CustomerID = O.CustomerID 
JOIN [Employees] as E 
ON E.EmployeeID = O.EmployeeID