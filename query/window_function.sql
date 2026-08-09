--ROW_NUMBER() is a window function in SQL. It assigns a unique sequential number to each row in the result set based on the order you specify.
--PARTITION BY restarts the numbering for each group.
select * , row_number()
over(PARTITION BY id order by salary desc) as row_num
from employee;
--rank() is a window function in SQL. It assigns a unique rank to each row within a partition of a result set, with gaps in the ranking for ties.
--RANK() assigns a rank to each row based on the ORDER BY clause.
select * , rank() over(order by stu_fees desc) as rank_num
from student;
--dense_rank() is a window function in SQL. It assigns a unique rank to each row within a partition of a result set, without gaps in the ranking for ties.
select * , dense_rank() over(order by stu_age asc) as dense_rank_num
from student;
/*
When should you use RANK() vs DENSE_RANK()?

Use RANK() when gaps in ranking matter (e.g., competition rankings: 1st, 1st, 3rd).
Use DENSE_RANK() when you want consecutive rankings (e.g., top salary bands: 1, 1, 2, 3).
*/
--lag
--LAG() returns the salary from the previous row.
select * , lag(stu_fees, 1) over(order by stu_fees) as previous_fee
from student;
--LEAD() returns the salary from the next row.
select * , lead(stu_fees, 1) over(order by stu_fees) as next_fees
from student;
select * from employee;
-- first value() returns the first value in an ordered set of values.
select * , first_value(salary) over (order by salary) as first_Sal from employee;
-- last value() returns the last value in an ordered set of values.
select * , last_value(salary) over (order by salary) as last_salary from employee;
--ntile() is a window function in SQL. It divides the result set into a specified number of roughly equal parts, or "tiles," and assigns a tile number to each row.
select * , ntile(4) over (order by salary) from employee;
--percent_rank() is a window function in SQL. It calculates the relative rank of a row within a partition as a percentage. formula (RANK - 1) / (Total Rows - 1)
select * , percent_rank() over (order by salary) from employee;
--cume_dist() is a window function in SQL. It calculates the cumulative distribution of a value within a partition. It returns the proportion of rows that are less than or equal to the current row's value.
select * , cume_dist() over (order by salary) from employee;