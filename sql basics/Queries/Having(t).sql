sELECT gender,avg(age)
fROM parks_and_recreation.EMPLOYEE_DEMOGRAPHICS
group by gender
having avg(age) > 40
;

SELECT occupation, avg(salary)
FROM parks_and_recreation.employee_salary
;


