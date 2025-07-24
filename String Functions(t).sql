-- String Functions

Select length('skyfall') as length
;

Select  trim('                hi                ') as trim
;

Select  ltrim('                hi                ') as left_trim
;

Select  rtrim('                hi                ') as right_trim
;

Select   upper('                hi                ') as upper_case
;

select lower('HI') as lower_case
;

select first_name, left(first_name,4) as first_4_char,right(first_name,4) as right_4_char
from parks_and_recreation.employee_demographics;

-- substring
select first_name, last_name,birth_date, substring(birth_date,6,2) as birth_month
from employee_demographics
;
-- replace
select first_name,replace(first_name,'A','w')
from employee_demographics
;

-- concat
select concat(first_name,' ',last_name) 
from employee_demographics
;


