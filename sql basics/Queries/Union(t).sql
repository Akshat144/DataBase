-- unions 
Select first_name,last_name
From parks_and_recreation.employee_demographics
Union distinct 
Select first_name, last_name
from parks_and_recreation.employee_salary;

Select first_name,last_name
From parks_and_recreation.employee_demographics
Union All 
Select first_name, last_name
from parks_and_recreation.employee_salary;


Select first_name,last_name,employee_id,'Aged Employee' as Label
From parks_and_recreation.employee_demographics
Where Age >40 
Union All 
Select first_name, last_name,'HIghly paid' as label
from parks_and_recreation.employee_salary
Where salary>70000;



