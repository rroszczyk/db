SELECT O.OrderID, O.OrderDate, O.CustomerID, C.CompanyName, E.LastName, 
	   E.FirstName, S.CompanyName AS ShipperName FROM Orders AS O
LEFT JOIN Customers AS C ON O.CustomerID = C.CustomerID
LEFT JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
LEFT JOIN Shippers AS S ON O.ShipVia = S.ShipperID
ORDER BY O.CustomerID;

SELECT E.LastName || ' ' || E.FirstName AS Name, T.TerritoryDescription
   FROM Employees AS E
   LEFT JOIN EmployeeTerritories AS ET ON E.EmployeeID=ET.EmployeeID
   LEFT JOIN Territories AS T ON ET.TerritoryID=T.TerritoryID
   ORDER BY E.LastName;
   
SELECT E.LastName || ' ' || E.FirstName AS Pracownik, B.LastName || ' ' || B.FirstName AS Szef
FROM Employees AS E
LEFT JOIN Employees AS B ON E.ReportsTo=B.EmployeeID
ORDER BY E.LastName;
