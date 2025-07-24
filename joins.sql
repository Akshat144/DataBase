Select *
from parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

Select parks_and_recreation.dem.employee_id,age,occupation
from parks_and_recreation.employee_demographics dem
INNER JOIN parks_and_recreation.employee_salary sal
	On parks_and_recreation.dem.employee_id=parks_and_recreation.sal.employee_id
    ;
select parks_and_recreation.dem.employee_id, parks_and_recreation.dem.first_name, parks_and_recreation.dem.last_name,gender,age,salary
from parks_and_recreation.employee_demographics dem
Inner join parks_and_recreation.employee_salary sal
	ON parks_and_recreation.dem.employee_id=parks_and_recreation.sal.employee_id
;

-- outer joins
-- left join
select * 
from parks_and_recreation.employee_demographics dem
left join parks_and_recreation.employee_salary sal
	on parks_and_recreation.dem.employee_id=parks_and_recreation.sal.employee_id
; 

-- right join
select * 
from parks_and_recreation.employee_demographics dem
right join parks_and_recreation.employee_salary sal
	on parks_and_recreation.dem.employee_id=parks_and_recreation.sal.employee_id
; 


-- self join
select * 
from parks_and_recreation.employee_salary sal1
join parks_and_recreation.employee_salary sal
	on parks_and_recreation.sal1.employee_id+1=parks_and_recreation.sal.employee_id
; 


-- joining multiple tables
Select *
from parks_and_recreation.employee_demographics dem
INNER JOIN parks_and_recreation.employee_salary sal
	On parks_and_recreation.dem.employee_id=parks_and_recreation.sal.employee_id
INNER JOIN parks_and_recreation.parks_departments dep
	ON  parks_and_recreation.dep.department_id=parks_and_recreation.sal.dept_id
    ;