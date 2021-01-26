zadanie 1
select e.name, e.surname, d.dept_name, d.address
from employees e left outer join departments d
on e.dept_id = d.dept_id 
order by surname;

zadanie 2
select e.name, e.surname, coalesce (d.dept_name,'no department') as dept_name, 
coalesce (d.address, 'no department') as address
from employees e left outer join departments d
on e.dept_id = d.dept_id 
order by surname;

zadanie 3
select coalesce (e.name, 'no employee') as name, 
coalesce(e.surname, 'no employee') as surname,
coalesce (d.dept_name,'no department') as dept_name, 
coalesce (d.address, 'no department') as address
from employees e full outer join departments d
on e.dept_id = d.dept_id 
order by surname;

zadanie 4
select d.dept_name as departments , count(e.job) as employees_at_dept, sum(e.salary) as salaries_at_dept
from employees e right outer join departments d
on d.dept_id = e.dept_id 
group by d.dept_name
order by d.dept_name;

zadanie 5
select e.surname as employee, coalesce (b.surname, 'no boss') as boss
from employees e left outer join employees b
on e.boss_id = b.emp_id
order by employee;

zadanie 6
select e.surname as employee, coalesce (b.surname, 'no boss') as boss
from employees e left outer join employees b
on e.boss_id = b.emp_id
where b.surname like 'Wilson' or b.surname like 'Smith' or e.surname = 'Smith'
order by employee;

zadnie 7
select e.surname as employee, 
e.salary*12 + coalesce (e.add_salary ,0) as emp_annual_salary,
(b.salary*12 + coalesce (b.add_salary,0))- (e.salary*12 + coalesce (e.add_salary, 0)) as less_than_boss
from employees e inner join employees b
on e.boss_id = b.emp_id
order by employee;

zadanie 8
select e.surname as boss, count(b.surname) as subordinates
from employees b right outer join employees e
on b.boss_id = e.emp_id
group by e.surname 
order by e.surname;


zadanie 9
select e.name || ' ' ||  e.surname as employee, d.dept_name , b.surname || ' ' || b.name as boss, depb.dept_name AS boss_department
from employees e
inner join employees b on e.boss_id = b.emp_id
inner join departments d on d.dept_id = e.dept_id
inner join departments depb on depb.dept_id = b.dept_id
order by employee;

zadanie 10
select e.name || ' ' ||  e.surname as employee, coalesce (d.dept_name, 'no department' )as employee_department,
coalesce (b.surname || ' ' || b.name, 'no boss') as boss, 
coalesce (depb.dept_name, 'no department') AS boss_department
from employees e
left outer join employees b on e.boss_id = b.emp_id
left outer join departments d on d.dept_id = e.dept_id
left outer join departments depb on depb.dept_id = b.dept_id
order by employee;

zadanie 11
SELECT count(*) as rows_of_acrtesian_product
FROM employees CROSS JOIN
departments cross join jobs
