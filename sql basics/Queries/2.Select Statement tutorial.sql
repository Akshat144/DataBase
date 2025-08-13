SELECT * 
FROM parks_and_recreation.employee_demographics;

select first_name,
last_name,
birth_date,
age,
(age+10)*10
From parks_and_recreation.employee_demographics;
#PENDAS
SELECT distinct first_name,  gender
From parks_and_recreation.employee_demographics;