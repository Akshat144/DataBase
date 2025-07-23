Select *
from parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

Select *
from parks_and_recreation.employee_demographics
INNER JOIN parks_and_recreation.employee_salary
	On parks_and_recreation.employee_demographics.employee_id=parks_and_recreation.employee_salary.employee_id
    ;
	