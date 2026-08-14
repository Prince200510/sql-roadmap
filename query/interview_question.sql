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

select * from employees;
--betweens
select * from employees
where salary between 50000 and 100000;

--like
select * from employees
where employee_name like '%A';

-- null manager
select * from employees
where manager_id is null;

--3 highest salary
select * from employees
order by salary DESC
limit 3;

select department_id, count(*) as employee_count
from employees
group by department_id;

select * from department;

--avg salary of each department
select department_id, cast(avg(salary) as int) as average_salary
from employees
group by department_id;

--inner join
select employee_name e, dept_name d 
from employees e 
inner join department d on e.department_id = d.id;

--employee who work in IT department
select employee_name e, dept_name d  
from employees e 
inner join department d on d.id = e.department_id
where d.dept_name = 'IT';

--Display employee name, department name and salary, sorted by salary descending.
select employee_name e, dept_name d, salary e
from employees e 
inner join department d on d.id = e.department_id
order by salary DESC;

--Display all departments, including departments that currently have no employees.
select employee_name e, dept_name d
from employees e 
left join department d on d.id = e.department_id;

select employee_name e, project_name p1, hours_worked ep
from employees e     
join employee_projects ep on e.employee_id = ep.employee_id
join projects p1 on p1.project_id = ep.project_id;