-- like statement
-- % and _
sELECT *
fROM parks_and_recreation.EMPLOYEE_DEMOGRAPHICS
WHERE first_NAME lIKE '%A__'
;

sELECT *
fROM parks_and_recreation.EMPLOYEE_DEMOGRAPHICS
WHERE BIRTH_DATE lIKE '1988%'
;
