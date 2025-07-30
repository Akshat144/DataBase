DELIMITER $$

Create TRIGGER employee_insert
AFTER INSERT ON EMPLOYEE_SALARY
FOR EACH ROW 
BEGIN
INSERT INTO employee_demographics(employee_id, first_name, last_name )
values(new.employee_id, new.first_name, new.last_name);
END $$
DELIMITER ;

select*
from employee_demographics;
select*
from employee_salary;

INSERT INTO employee_salary(employee_id, first_name, last_name,occupation,salary,dept_id )
values(14,'Aakansh','Agrawal','Student',500000,5);


-- Events
Select *
from employee_demographics;
delimiter $$
create event delter_retires
ON schedule every 30 second
do 
begin
	delete
    from employee_demographics
    where age<=60;
end $$
delimiter   ;
