

Select 
s.SaleID, (e.FirstName + ' ' + e.LastName) as EmployeeName, 
(c.FirstName + ' ' + c.LastName) as CustomerName, 
s.SaleDate, s.TotalAmount,
p.[Name] as ProductName, 
sd.Quantity, sd.UnitPrice


from Sale as s
inner join SaleDetail as sd on s.SaleID = sd.SaleID
inner join Employee e on e.EmployeeID = s.EmployeeID
inner join Customer c on c.CustomerID = s.CustomerID
inner join Product p on p.ProductID = sd.ProductID
