Select first_name,
last_name,
age, 
case
	when age>=20 AND age<30 then 'young' 
    when age between 30 and 40 then 'middile aged'
    when age>=40 then 'old'
end as Category
from employee_demographics
;    
-- Pay increase and bonus
select *,
case  when department_name= 'Finance' then  '10%'
	  when salary>50000 then '7%'
	  when salary<50000 then '5%'
      
end as salary_increase
from employee_salary
join parks_departments
on employee_salary.dept_id=parks_departments.department_id
join employee_demographics
on employee_demographics.employee_id=employee_salary.employee_id

;
select*
from parks_departments;