

51,

SELECT
    name, population, area
FROM
    world
WHERE
    area >= 3000000 OR population >= 25000000
;


52,

SELECT 
name
from Customers 
where referee_id <> 2


53,

elect c.name as Customers from 
customers as c 
left join orders as o 
on c.id =  o.customerid
where o.id is null and o.customerid is null

54,

WITH result as
(   
SELECT
    team_id,
    COUNT(*) as team_size
FROM Employee
GROUP BY 1
)

SELECT
    e.employee_id,
    r.team_size
FROM Employee as e JOIN result as r
ON e.team_id = r.team_id
ORDER BY 1



55,

with t1 as(
select caller_id as id, duration as total
from
(select caller_id, duration
from calls
union all
select callee_id, duration
from calls) a
)
select name as country
from
(select distinct avg(total) over(partition by code) as avg_call, avg(total) over() as global_avg, c.name
from
((select *, coalesce(total,0) as duration, substring(phone_number from 1 for 3) as code
from person right join t1
using (id)) b
join country c
on c.country_code = b.code)) d
where avg_call > global_avg




60,

Select 
x,
y,
z,
Case 
When x+y > z and 
y+z > x and 
z+x > y then 
'NO'
Else 'Yes'
as triangle
From Triangle 



--61

select max(data1)
from (
select (abs(p1.point-p2.point)) as data1
from Points as p1 inner join points as p2 
on p1.point <> p2.point ) a 





