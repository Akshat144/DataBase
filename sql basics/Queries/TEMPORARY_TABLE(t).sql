-- Temporary tables

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)
 );
 	insert into temp_table
    values('Akshat','Agrawal','Pirates of Carribbean');
 
 select *
 from temp_table;
 
 
 create temporary table Salary_over_50k
select *
from employee_salary
where salary>50000
;
 select *
 from Salary_over_50k
 ;
 