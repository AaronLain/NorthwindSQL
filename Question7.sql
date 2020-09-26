select 
UnitPrice [Price],
ProductName [Product]
from Products
where UnitPrice > (select avg(UnitPrice) from Products)
order by UnitPrice DESC
