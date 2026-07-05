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