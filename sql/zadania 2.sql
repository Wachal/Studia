zadanie 1:
select surname, emp_id,
upper (substring(surname, 1,2 )) || emp_id as login
from employees
order by surname;

zadanie 2:
select surname
from employees
where surname like '%L%' or surname like '%l%'
order by surname;

zadanie 3:
select surname from employees where
(position('L' in surname) between 1 and length(surname)/2) or 
(position('l' in surname) between 1 and length(surname)/2) 
order by surname;

zadanie 4:
select surname, salary, 
round (salary + salary * 0.15) as "powiększona_pensja"
from employees
order by surname;

zadanie 5:
select  to_char(current_date, 'FMDAY') as "today_is";

zadanie 6:
select  to_char(date '1999-04-10', 'FMDAY') as "i w was born on";

zadanie 7:
select surname,
to_char(hire_date, 'FMDD FMMonth YYYY, FMDay')
from employees
order by surname;

zadanie 8:
select surname, job,
AGE(TIMESTAMP '01-01-2000', hire_date) as experience_in_2000
from employees
where job = 'ASSISTANT' or job = 'PROFESSOR' or job = 'LECTURER'
order by experience_in_2000 DESC, surname;

zadanie 9:
select surname, job,
AGE(TIMESTAMP '01-01-2000', hire_date) as experience_in_2000
from employees
where (job = 'ASSISTANT' or job = 'PROFESSOR' or job = 'LECTURER') and EXTRACT(YEAR
              FROM age(TIMESTAMP '01-01-2000', hire_date)) > 10
order by experience_in_2000 desc, surname;

zadanie 10:
select surname, job,
round (extract (year from AGE(TIMESTAMP '01-01-2000', hire_date))) as experience_in_2000
from employees
where (job = 'ASSISTANT' or job = 'PROFESSOR' or job = 'LECTURER') and EXTRACT(year
              FROM age(TIMESTAMP '01-01-2000', hire_date)) > 10
order by experience_in_2000 desc, surname;
