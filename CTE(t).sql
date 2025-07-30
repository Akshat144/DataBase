
-- CTE
WIth Cte(GENDER,AVERAGE_SALARY,MAX_SALARY,MIN_SALARY,COUNT_SALARY) as(
Select gender, Avg(salary) as avg, MAx(salary), MIn(salary), Count(salary)
From employee_salary
join employee_demographics on employee_demographics.employee_id=employee_salary.employee_id
group by gender)
select *
 from cte

;

with

cte1 as
(
 select*
 from employee_demographics
 where birth_date>'1985-01-01'

)
,
 cte2 as
 (
 select *
 from employee_salary
 where salary>50000
 )
 
 select *
from cte1
join cte2
on cte1.employee_id=cte2.employee_id
