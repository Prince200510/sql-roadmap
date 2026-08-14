-- create database <database_name>;
-- use <database_name>;
create table employee (
    id int primary key,
    name varchar(20) not null,
    age int not null,
    salary decimal(10, 2)
); 

-- drop table employee;
-- delete table
-- truncate table employee;

insert into employee values(1, 'Prince Maurya', 21, 70000.50);
insert into employee (id, name, age, salary) values(2, 'Suresh', 54, 90535.67);
insert into employee values(3, 'Ramesh', 32, 50000.00),(4, 'Sita', 28, 60000.00),(5, 'Gita', 25, 45000.00);
select * from employee
-- particular column
select name, age from employee;
select distinct age from employee;
-- alias
select salary as Monthly_Salary from employee;
select salary from employee where salary > 50000;
select salary from employee where salary != 45000;
/* excution flow 
step 1 read (from)
step 2 where != 45000 check the condition 
step 3 requested query
*/

select salary, name from employee
where salary between 60000 and 100000;

-- start
select * from employee
where name like 'P%';

--end
select * from employee
where name like '%a';

--contains
select * from employee
where name like '%ri%';

--one character
select * from employee
where name like '_a%';

--null or not null
select * from employee
where name is not null;

alter table employee
add dept varchar(20);

alter table employee
drop column dept;

update employee
set salary = 50000
where id = 2;

delete from employee
where id = 5;

ALTER TABLE employee
DROP PRIMARY KEY;

ALTER TABLE employee
ADD PRIMARY KEY (name);

drop table employee;