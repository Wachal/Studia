zadanie 1
with
salary1 as
(select surname, job, salary
from employees )
select surname, job, salary
from salary1 e2
where salary > (select avg(salary) 
from employees e1 where e1.job = e2.job)
order by surname;

zadanie 2
with
emps as
(select dept_name, salary from employees 
join departments using(dept_id) 
group by dept_name, salary)
select sum(salary) as sum_of_sal, dept_name
from emps
group by dept_name
limit 1

zadanie 3
with pracownik(surname, salary, emp_id) as
( select surname, salary, emp_id
from employees e1
where salary > 0.6 *( select salary from employees e2 where e2.emp_id = e1.boss_id ))
select b.surname, b.salary, a.surname as boss_name, a.salary as boss_salary
from pracownik a inner join employees b on a.emp_id = b.boss_id
order by b.surname;

zadanie 4
select surname, hire_date from employees 
fetch first 1 row only

zadanie 5
with pierwszy(surname, hire_date) as (select surname, hire_date from employees fetch first 1 row only )
select employees.surname, ( employees.hire_date - pierwszy.hire_date ) as num_of_days from employees cross join pierwszy
order by ( employees.hire_date - pierwszy.hire_date ) 

zadanie 6
with pracownik (surname, salary) as (select surname, salary from employees )
select (pracownik.surname ||
case 
when pracownik.salary<1500 then ' earns one grand'
when pracownik.salary between 1500 and 2400 then ' earns two grand'
when pracownik.salary between 2500 and 3400 then ' earns three grand'
when pracownik.salary between 3500 and 4400 then ' earns four grand'
when pracownik.salary between 4500 and 5400 then ' earns five grand'
end) as sentence from pracownik
order by surname;