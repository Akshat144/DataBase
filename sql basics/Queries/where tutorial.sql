Select *
From parks_and_recreation.employee_demographics
where gender = 'Female';

Select *
From parks_and_recreation.employee_demographics
where gender != 'Female';

Select *
From parks_and_recreation.employee_demographics
where birth_date>'1985-01-01';

Select *
From parks_and_recreation.employee_demographics
where gender != 'Female';


Select *
From parks_and_recreation.employee_salary
where salary>=60000
And occupation='Office Manager' ;

Select *
From parks_and_recreation.employee_demographics
where (first_name='leslie' And age=44)or (age>=46)
 ;
