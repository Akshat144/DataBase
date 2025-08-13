sELECT gender,AVG(age),max(AGE),COUNT(FIRST_NAME)
fROM parks_and_recreation.EMPLOYEE_DEMOGRAPHICS
GROUP BY gender
;


-- ORDER BY

sELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender desc,age asc
;

-- column number

sELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5 desc,4 asc
;