--baitap1
SELECT 
sum(case
when device_type ='laptop'then 1 
end) as laptop_views,
sum(case
when device_type='tablet' or device_type ='phone' then 1
end) as mobile_views
FROM viewership;
--baitap2
select x, y, z ,
case
when  x+y>z and x+z>y and y+z>x then 'Yes'
else 'No'
end as triangle
from Triangle
--baitap3
--baitap4
select name from customer
where not (referee_id= '2') or referee_id is null
--baitap5
select
case
when pclass =1 then 'first_class'
when pclass=2 then 'second_class'
when pclass=3 then 'third_class'
end as class,
sum (case when survived = 1 then 1 else 0
end ) as survivors,
sum ( case when survived = 0 then 1 else 0
end ) as non_survivors
from titanic
group by class
