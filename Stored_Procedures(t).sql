USe parks_and_recreation;
create procedure start_with_A()
select *
from employee_demographics
where first_name like 'A%'
;
Call  start_with_A();


DELIMITER $$
create procedure start_with_A_B()
BEGIN
	SELECT *
    FROM employee_demographics
    where first_name like 'A%'
    ;
    SELECT *
    FROM employee_demographics
    where first_name like 'B%'
    ;
    END $$
    DELIMITER ;
    
    CALL start_with_A_B();
    
	CALL start_with_A_B_C();
    DELIMITER $$
    CREATE PROCEDURE department_check(i_dept_id int)
    BEGIN 
		SELECT *
        FROM employee_salary
        WHERE dept_id=i_dept_id;
	END $$
    DELIMITER ;
    CALL  department_check(1);