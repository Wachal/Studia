zadanie 1.

select e.name, e.surname, d.dept_name, d.address
from employees e inner join departments d
on e.dept_id = d.dept_id 
order by e.surname;

zadanie 2.

select 'employee' || ' ' || e.name || '  ' || e.surname || ' works in ' || d.dept_name|| ' located at ' || d.address 
as sentence
from employees e inner join departments d
on e.dept_id = d.dept_id 
order by e.surname;

zadanie 3.
select e.surname, e.salary 
from employees e inner join departments d
on e.dept_id = d.dept_id 
where d.address = '47TH STR'
order by e.surname;

zadanie 4.
select count(e.surname) as employees_at_47th_str, round(avg(e.salary),2) as avg_salary 
from employees e inner join departments d
on e.dept_id = d.dept_id 
where d.address = '47TH STR' 
group by d.address

zadanie 5.
select e.surname, e.job, e.salary, j.min_salary, j.max_salary
from employees e inner join jobs j
on e.job = j.name
order by e.surname; 

zadanie 6.
select e.surname, e.job, e.salary, j.min_salary, j.max_salary
from employees e inner join jobs j
on (e.salary < min_salary) and (e.salary > max_salary)
order by e.surname; 


zadanie 7.
select e.surname, e.job, e.salary, j.min_salary, j.max_salary
from employees e inner join jobs j
on e.salary 
between j.min_salary and j.max_salary
where j."name" = 'ASSISTANT'
order by e.surname;

zadanie 8.
select d.dept_name as departments , count(e.job) as employees_at_dept, sum(e.salary) as salaries_at_dept
from employees e inner join departments d
on d.dept_id = e.dept_id 
group by d.dept_name
order by d.dept_name;

zadanie 9.
select d.dept_name as departments , count(e.job) as employees_at_dept, sum(e.salary) as salaries_at_dept
from employees e inner join departments d
on d.dept_id = e.dept_id 
group by d.dept_name
having count(e.job) > 1
order by d.dept_name;

zadanie 10.
select d.dept_name as departments,
case 
when count(e.job)<='2' then 'small'
when count(e.job) between '3' and '6' then 'medium'
when count(e.job)>='7' then 'big'
end as label
from employees e inner join departments d
on d.dept_id = e.dept_id 
group by d.dept_name
order by d.dept_name;