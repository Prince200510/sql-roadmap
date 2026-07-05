-- ascending
select * from employee
order by salary; -- or by salary asc

--descending
select * from employee
order by salary desc;

-- limit
select *  from employee
order by salary desc
limit 1; --highest salary

create table student(
    stu_id int,
    stu_name VARCHAR(40),
    stu_fees DECIMAL(10, 2),
    stu_subject VARCHAR(20),
    stu_age int check(stu_age >= 0 and stu_age <= 100),
    stu_class int
);

insert into student values(1, 'Prince Maurya', 5000, 'C++', 21, 10);
INSERT INTO student VALUES
(2, 'Priya Verma', 52000.00, 'Java', 19, 11),
(3, 'Rohan Gupta', 48000.00, 'Python', 21, 12),
(4, 'Sneha Patel', 55000.00, 'C', 18, 10),
(5, 'Vikram Singh', 60000.00, 'Java', 22, 12),
(6, 'Ananya Mishra', 47000.00, 'Python', 20, 11),
(7, 'Rahul Yadav', 51000.00, 'C++', 19, 10),
(8, 'Neha Kumari', 49000.00, 'HTML', 18, 9),
(9, 'Aditya Joshi', 53000.00, 'JavaScript', 21, 12),
(10, 'Pooja Nair', 58000.00, 'Python', 20, 11),
(11, 'Karan Mehta', 62000.00, 'Java', 23, 12),
(12, 'Simran Kaur', 46000.00, 'C', 19, 10),
(13, 'Manish Kumar', 50000.00, 'C++', 20, 11),
(14, 'Divya Iyer', 57000.00, 'Python', 22, 12),
(15, 'Saurabh Pandey', 54000.00, 'JavaScript', 21, 11),
(16, 'Kavya Reddy', 61000.00, 'Java', 20, 12),
(17, 'Harsh Agarwal', 43000.00, 'HTML', 18, 9),
(18, 'Nisha Choudhary', 56000.00, 'C++', 19, 10),
(19, 'Arjun Thakur', 59000.00, 'Python', 22, 12),
(20, 'Meera Desai', 49500.00, 'C', 20, 11);

--group clause
--The GROUP BY clause is used to group records with the same values in a column and perform aggregate functions such as SUM(), COUNT(), etc.
SELECT stu_class, SUM(stu_fees) AS total_fees
FROM Student
GROUP BY stu_class;

--order clause
--The ORDER BY clause is used to sort query results in ascending or descending order. This example sorts students by their fees in ascending order.
SELECT * FROM Student
ORDER BY stu_fees ASC;

--having clause
--The HAVING clause filters groups created by the GROUP BY clause, working on aggregate values (like sums or counts). It is essentially the WHERE clause for groups, applied after the aggregation is performed.
select stu_subject, count(*) as num_student
from student
group by stu_subject
having count(*) > 1;