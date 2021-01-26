zadanie 1:
select * from departments;

zadanie 2:
select * from employees;

zadanie 3:
select surname, job, salary * 12
from employees;

zadanie 4:
select surname, job, salary * 12 as yearly_income
from employees;

zadanie 5:
select surname, job,
salary+COALESCE(add_salary, 0) 
as monthly_income
from employees
order by monthly_income;

zadanie 6:
select name || ' ' || surname as assistance from employees
where job = 'ASSISTANT'
order by surname;

zadanie 7:
select name || ' ' || surname as employee, job, salary, dept_id 
from employees
where dept_id = '40' or dept_id = '30'
order by salary desc;

zadanie 8:
select name || ' ' || surname as employee, job, salary
from employees
where salary >= '1000' and salary <= '2000'
order by salary;

zadanie 9:
select surname from employees
where surname like '%son';

zadanie 10:
select surname, name from employees
where dept_id is null;

zadanie 11:
select surname, name, boss_id, salary 
from employees
where boss_id is not null and salary > '2000';

zadanie 12:
select name, surname, dept_id
from employees
where dept_id = '20' and (surname like 'W%' or surname like '%son');

zadanie 13:
select name, surname, salary+coalesce(add_salary,0) as monthly_salary
from employees
where salary+coalesce(add_salary,0) >= '4000';

zadanie 14:
select 'employee ' || name ||' '|| surname || ' work as ' || job || ' and earns ' || salary
from employees
order by surname;
