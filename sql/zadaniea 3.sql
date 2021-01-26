zadanie 1:
select surname, salary,
case 
when salary<'1500' then 'low paid'
when salary between '1500' and '3000' then 'average paid'
when salary>'3000' then 'well paid'
end as label
from employees
order by surname;

zadanie 2:
select distinct boss_id
from employees
where boss_id is not null
order by boss_id;

zadanie 3:
select distinct dept_id, job 
from employees
where dept_id is not null
order by dept_id, job;

zadanie 4:
select distinct to_char(hire_date, 'YYYY') as years
from employees
order by years;

zadanie 5:
select dept_id from departments 
except
select dept_id from employees where job is null;           


zadanie 6:
select surname, salary, 'low paid' as label from employees where salary < 1500
union
select surname, salary, 'average paid' from employees where salary between 1500 and 3000
union
select surname, salary, 'well paid' from employees where salary > 3000
order by surname;