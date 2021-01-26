zadanie 1:
select max (salary) as maximum_salary, min (salary) as minimum_salary,
max(salary) - min (salary) as difference from employees;

zadanie 2:
select count(*) as employees_without_dept from employees
where dept_id is null;

zadanie 3:
select count(*) as professors from employees
where job = 'PROFESSOR';

zadanie 4:
select job, round(avg(salary),2) as job_average_salary from employees
group by job 
order by job_average_salary desc;

zadanie 5:
select distinct job, 
avg(salary + COALESCE(add_salary,0))::decimal(1000,2) as "job_average_salary",
count(*) AS "employees";

zadanie 6
select distinct job, 
avg(salary + coalese(add_salary,0))::decimal(1000,2) as "job_average_salary", 
count(*) AS employees

from employees 
group by job having count(*) > 1 
order by job_average_salary desc;

zadanie 7:
select dept_id, count(add_salary) as employees_with_add_salary from employees
where dept_id is not null
group by dept_id
order by dept_id;

zadanie 8:
select dept_id, count(add_salary) as employees_with_add_salary, 
round(avg(add_salary),2) as avg_add_salary,
sum(add_salary) as sum_of_add_salaries from employees
where dept_id is not null
group by dept_id
order by dept_id;

zadanie 9:
select boss_id, count (job) as job from employees
where boss_id is not null
group by boss_id 
order by boss_id;

zadanie 10:
select to_char(hire_date, 'YYYY') as year_of_employment, 
count(job) as number_of_employees from employees
group by year_of_employment
order by year_of_employment;

zadanie 11:
select distinct length(surname) as surname_length, 
count(surname) as number_of_surnames from employees
group by surname_length
order by surname_length;

zadanie 12:
select count (surname) as surnames_with_a from employees
where surname like '%a%' or surname like '%A%';

select count (surname) as surnames_with_e from employees
where surname like '%e%' or surname like '%E%';

zadanie 13:
select sum(case
when (surname like '%a%') 
or (surname like '%A%') then 1 else 0 end) as surnames_with_a,
sum(case when (surname like '%e%') 
or (surname like '%E%') then 1 else 0 end) as surnames_with_e 
from employees;