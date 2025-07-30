insert into employee_demographics
(employee_id,first_name,last_name,age,gender,birth_date )
values  (13,'Akshat','Agrawal',19,'Male','2005-12-14'   );
select *
from employee_demographics;

DELETE FROM employee_demographics
WHERE employee_id=13;
