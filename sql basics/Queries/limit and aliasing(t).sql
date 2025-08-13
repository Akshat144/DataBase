-- Limit & Aliasing

select*
From parks_and_recreation.employee_demographics
Order by age Desc
Limit 8,11

;

select*
From parks_and_recreation.employee_demographics
Order by age Desc
Limit 8

;


select first_name as name
From parks_and_recreation.employee_demographics
having name like 'A%'
;

