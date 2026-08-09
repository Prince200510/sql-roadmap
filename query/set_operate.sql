CREATE TABLE IF NOT EXISTS users_2021 ( UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users_2022 ( UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users_2023 ( UserID INT PRIMARY KEY, Name VARCHAR(50));
-- users_2021
INSERT INTO users_2021 (UserID, Name) VALUES
(1, 'Prince'),
(2, 'Priya'),
(3, 'Rohan'),
(4, 'Neha'),
(5, 'Vikram');

-- users_2022
INSERT INTO users_2022 (UserID, Name) VALUES
(1, 'Ananya'),
(2, 'Karan'),
(3, 'Rohan'),
(4, 'Rahul'),
(5, 'Vikram');

-- users_2023
INSERT INTO users_2023 (UserID, Name) VALUES
(1, 'Prince'),
(2, 'Kavya'),
(3, 'Aditya'),
(4, 'Pooja'),
(5, 'Vikram');
drop table users_2023;
--union: Combines the result sets of two or more SELECT statements and removes duplicate rows.
select * from users_2021
union
select * from users_2022;
--union all: Combines the result sets of two or more SELECT statements and includes duplicate rows.
select * from users_2021
union ALL
select * from users_2022;
--except: Returns the rows from the first SELECT statement that are not present in the second SELECT statement.'
select * from users_2021
except
select * from users_2022;
--intersect: Returns the rows that are common to both SELECT statements.
select * from users_2021
intersect
select * from users_2022;
-- multiple set operation
select * from users_2021
union ALL
select * from users_2022
union
select * from users_2023;