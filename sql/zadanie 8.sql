zadanie 1
select dept_id, dept_name, address 
from departments d
where not exists ( select * from employees e 
where e.dept_id = d.dept_id );

zadanie 2
SELECT surname, job, salary
FROM employees e1
WHERE salary >
(SELECT AVG(salary) FROM employees e2
WHERE e1.job = e2.job)
ORDER BY surname;

zadanie 3
select surname, job, salary, ( select round( AVG(salary), 2) 
from employees e where e.job = e1.job ) AS avg_sal_for_job
from employees e1
where salary > ( select avg(salary) 
from employees e2 where e1.job = e2.job )
order by surname

zadanie 4
select surname, job, salary from employees e1
where salary > 0.6*( select salary from employees e2 
where e2.emp_id = e1.boss_id );

zadanie 5:
select max(dept_sum) as max_dept_sum
from (select dept_id, sum(salary) as dept_sum
from employees
group by dept_id) sum_dept_ds;

zadanie 6
select dept_name,
coalesce((select sum(salary) 
from employees e 
group by dept_id 
having e.dept_id = d.dept_id ),0) as lowest_salary
from departments d 
order by lowest_salary desc 
limit 1;

select d.dept_name, sum(salary) as sum_of_sal
from employees e inner join departments d on d.dept_id = e.dept_id 
group by e.dept_id, d.dept_name 
having sum(salary) = (select max(avg_in_dept) from( select sum(salary) 
as avg_in_dept from employees e group by dept_id)
as max_salary);

zadanie 7
select surname, salary 
from ( select surname, salary from employees 
where employees.emp_id = employees.emp_id ) s
order by salary DESC LIMIT 3

select surname, salary from employees e 
where 3 >  (select count(*) from employees where salary > e.salary)
order by salary desc 







