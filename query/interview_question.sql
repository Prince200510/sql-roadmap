--second highest salary
select * , salary 
from employee 
order by salary desc 
limit 1 offset 1; --offset is optional to write 
--Nth Highest Salary
-- Method 1
select * , salary
from employee
order by salary desc
limit 1 offset 3;
-- Method 2
select * , salary
from (select * , salary, dense_rank() over (order by salary desc) as ranks from employee) as ranked_employees
where ranks = 4;
-- Top 3 Salary
select * from employee
order by salary desc
limit 3;
-- Duplicate Records
select name, count(*) as counts
from employee
group by name
having count(*) > 1;
--Remove duplicates
select distinct name from employee;