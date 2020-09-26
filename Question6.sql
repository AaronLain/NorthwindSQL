select 
concat('1997 Q1: ', sum(Subtotal)) [Quarterly Total]
from [Summary of Sales by Quarter]
where ShippedDate between '1997-1-1' and '1997-3-31'
union
select 
concat('1997 Q2: ', sum(Subtotal))
from [Summary of Sales by Quarter]
where ShippedDate between '1997-4-1' and '1997-6-30'
union
select 
concat('1997 Q3: ', sum(Subtotal))
from [Summary of Sales by Quarter]
where ShippedDate between '1997-7-1' and '1997-9-30'
union
select 
concat('1997 Q4: ', sum(Subtotal))
from [Summary of Sales by Quarter]
where ShippedDate between '1997-10-1' and '1997-12-31'
