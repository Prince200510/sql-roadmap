select * from employee
where salary > (select avg(salary) from employee);

select * from employee
where salary = (select max(salary) from employee);

select * from employee;

create table department(
    id int PRIMARY key,
    dept_name VARCHAR(50),
    location VARCHAR(50),
    foreign key (id) references employee(id)
);

INSERT INTO department (id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'Finance', 'Los Angeles'),
(3, 'IT', 'Chicago'),
(4, 'Sales', 'Houston'),
(5, 'Marketing', 'Phoenix');

select * from employee
where id in (select id from department where location = 'New York');

--correlated subquery: A correlated subquery is a subquery that references a column from the outer query. It is evaluated once for each row processed by the outer query.
select e.name, e.salary
from employee e
where e.salary < (select avg(salary) from employee where id = e.id);

--delte using subquery
delete from employee
where id in (select id from employee where salary < (select avg(salary) from employee));
