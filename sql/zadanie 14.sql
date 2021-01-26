create view Professors(name, surname, hire_date, salary, add_salary, add_percent
as select name, surname, hire_date, salary, add_salary, round((coalesce(add_salary, 0) / salary) * 100, 2)
from employees where job = 'PROFESSOR';

select * from Professors
order by surname;

zadanie 2:
create view Departments_totals(dept_id, department, avg_salary, num_of_empls)
as select d.dept_id, d.dept_name, round(avg(e.salary),2), count(e.salary)
from departments d left join employees e using(dept_id)
group by d.dept_id;
   
select * from Departments_totals

zadanie 3:
select e.surname, e.name, e.salary, d.department, d.avg_salary, e.salary - d.avg_salary as diff
from Departments_totals d join employees e using(dept_id)
where (e.salary - d.avg_salary) > 0
order by surname;

zadanie 4:
select department, num_of_empls
from Departments_totals
order by num_of_empls desc
limit 1;

zadanie 5:
create view Emps_and_bosses(employee, emp_salary, boss, boss_salary)
as select e1.surname || ' ' || e1.name, e1.salary, e2.surname || ' ' || e2.name, e2.salary
from employees e1 join employees e2 on e1.boss_id = e2.emp_id
where e1.salary < e2.salary;
   
select * from Emps_and_bosses
order by employee;

zadanie 6:
create or replace view Emps_and_bosses(employee, emp_salary, boss, boss_salary)
as select surname || ' ' || name, salary, (select surname || ' ' || name from employees b where b.emp_id = e.boss_id), 
(select salary from employees b where b.emp_id = e.boss_id) from employees e
where salary < (select salary from employees b where b.emp_id = e.boss_id)
with check option;
   
select * from Emps_and_bosses
order by employee;

zadanie 7:
update Emps_and_bosses
set emp_salary = 2950
where employee = 'Wood Adam';

select emp_salary
from emps_and_bosses
where employee = 'Wood Adam';

zadanie 8:
update Emps_and_bosses
set emp_salary = 3500
where employee = 'Wood Adam';

Błąd:
SQL Error [44000]: BŁĄD: nowy wiersz narusza opcję sprawdzającą widoku "emps_and_bosses"
Detail: Niepoprawne ograniczenia wiersza (200, Wood, Adam, PHD STUDENT, 140, 1994-07-15, 3500.00, null, 30).

zadanie 9:
update employees
set salary = 3500
where name = 'Adam' and surname = 'Wood';

select emp_salary
from emps_and_bosses
where employee = 'Wood Adam';