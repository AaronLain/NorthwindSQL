select 
sum(od.UnitPrice) [Subtotal],
o.OrderID,
sum(od.Discount) [Discount %]
from Orders o
	inner join [Order Details] od
		on o.OrderID = od.OrderID
group by o.OrderID
order by sum(od.Discount) DESC