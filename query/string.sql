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
--concat_Ws
select concat_ws('_', 'Hello', 'World', 'SQL') as concatenated_string;
--format
select format(0.981 * 100, 'N2') + '%' as percentage_output;
--locate
select locate('maurya', 'prince maruya', 1);
--lpad
select lpad('Hello', 10, '*') as left_padded_string;
--rpad
select rpad('Hello', 10, '*') as right_padded_string;
--position
select position('e' in 'prince');
--repeat
select repeat('Hello', 2);
--strcmp
select strcmp('Hello', 'Hello') as comparison_result;
