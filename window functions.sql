SELECT dem.first_name, dem.last_name, gender, avg(salary) Over ( partition By gender ) as avg
From employee_demographics dem
join employee_salary sal on 
dem.employee_id=sal.employee_id
;



-- using Group by (not useful)
 SELECT dem.first_name, dem.last_name, gender, avg(salary),salary
From employee_demographics dem
join employee_salary sal on 
dem.employee_id=sal.employee_id
group by dem.first_name, dem.last_name, gender,salary
;
SELECT  gender, avg(salary)
From employee_demographics dem
join employee_salary sal on 
dem.employee_id=sal.employee_id
group by  gender
;


SELECT dem.first_name, dem.last_name, gender,dem.employee_id, SUM(salary) Over( partition By gender  order by dem.employee_id ) as sum,salary
From employee_demographics dem
join employee_salary sal on 
dem.employee_id=sal.employee_id
;


SELECT  row_number() Over(partition By gender  order by salary desc ) as row_number1,dem.first_name, dem.last_name, gender,dem.employee_id,salary
,RANK() OVER(partition by gender order by salary) as rank1 ,dense_rank() Over (partition by gender order by salary) as dense_rank1
From employee_demographics dem
join employee_salary sal on 
dem.employee_id=sal.employee_id
;