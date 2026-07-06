select * from employee;
--case
select name, salary,
case
when salary > 50000 then 'High Salary'
when salary <= 50000 and salary > 40000 then 'Medium Salary'
else 'Low Salary'
end as salary_category
from employee;

select * from student;

create table StudentCourse(
    course_id int,
    stu_id int,
    FOREIGN KEY (stu_id) REFERENCES student(stu_id)
);

drop table "StudentCourse";
INSERT INTO StudentCourse (course_id, stu_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 5),
(18, 5),
(19, 5),
(20, 5);

select * from "StudentCourse";
--inner join: INNER JOIN is used to retrieve records that have matching values in both tables. It returns only the rows where there is a match in both tables.
select StudentCourse.course_id, student.stu_name, student.stu_age
from student
inner join StudentCourse
on student.stu_id = StudentCourse.stu_id;
select * from student;

--left join: LEFT JOIN is used to retrieve all rows from the left table and matching rows from the right table
select student.stu_name, StudentCourse.course_id
from student
left join  StudentCourse
on StudentCourse.stu_id = student.stu_id;
--right join: RIGHT JOIN is used to retrieve all rows from the right table and matching rows from the left table
select student.stu_name, StudentCourse.course_id
from student
right join StudentCourse
on StudentCourse.stu_id = student.stu_id;
--full join: FULL JOIN is used to retrieve all rows from both tables, with matching rows from both sides where available. If there is no match, NULL values are returned for the columns of the table that lacks a matching row.
select student.stu_name, StudentCourse.course_id
from student
full join StudentCourse
on StudentCourse.stu_id = Student.stu_id;
--natural join: NATURAL JOIN is used to retrieve records from two tables based on the columns with the same name and data type in both tables. It automatically matches the columns with the same name and returns the rows where there is a match.
select stu_name, course_id
from student
natural join StudentCourse;