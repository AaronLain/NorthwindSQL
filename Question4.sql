select 
p.ProductName,
sum(od.Quantity) [Quantity],
sum(od.UnitPrice) [Total]
from Orders o
	inner join [Order Details] od
		on o.OrderID = od.OrderID
	inner join Products p
		on p.ProductID = od.ProductID
	inner join Categories c
		on c.CategoryID = p.CategoryID
group by p.ProductName
order by sum(od.UnitPrice) DESC
