select length('Hello') as string_lengths;
--upper
select upper('hello');
--lower
select lower('HELLO');
--replace 
select replace('Hello World', 'World', 'SQL') as string_updated;
--substring
select substr('Hello World', 1, 5) as subtring;
-- left
select LEFT('Hello World', 5) as left_string;
--right
select RIGHT('Hellow World, 5') as right_string;
--instr used for first occurance of the string
select instr('Hello World', 'World') as position;
--trim
SELECT TRIM('  Hello World  ') AS TrimmedString;
--reverse
select reverse('Hello') as reverses;
--rtrim
SELECT rtrim('hello    ');
--ltrim
SELECT ltrim('   hello');
--space
select space(7);
--ascii
select ascii('p');