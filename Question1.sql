select 
sum(od.UnitPrice) [Subtotal],
o.OrderID
from Orders o
	inner join [Order Details] od
		on o.OrderID = od.OrderID
group by o.OrderID