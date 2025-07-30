select *
from employee_demographics;
select *
from parks_departments;

select * , 'Parks and Recreation' as department
from employee_salary
Join employee_demographics 
On employee_demographics.employee_id=employee_salary.employee_id
where dept_id=1 
;

select *
from employee_demographics
where employee_id in 
(Select employee_id
From employee_salary
where dept_id=1
) 
;

SELECT gender ,  AVG(`MAX(age)`) as Avg_maxage
FROM 
(SELECT gender,AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics 
Group BY gender) as Agg_table
group by gender;
